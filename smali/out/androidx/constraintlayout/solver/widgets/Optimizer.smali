.class public Landroidx/constraintlayout/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_GROUPS:I = 0x20

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x7

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 19
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 152
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 154
    iget-object v1, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    .line 155
    .local v1, "leftNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v2, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 156
    .local v2, "topNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    .line 157
    .local v3, "rightNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    .line 159
    .local v4, "bottomNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    and-int/lit8 v5, p0, 0x8

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_27

    move v5, v8

    goto :goto_28

    :cond_27
    move v5, v7

    .line 163
    .local v5, "optimiseDimensions":Z
    :goto_28
    iget-object v9, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_38

    .line 164
    invoke-static {v0, v7}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_38

    move v9, v8

    goto :goto_39

    :cond_38
    move v9, v7

    .line 166
    .local v9, "isOptimizableHorizontalMatch":Z
    :goto_39
    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    if-eq v10, v12, :cond_1b7

    iget v10, v3, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_1b7

    .line 168
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_fd

    if-eqz v9, :cond_58

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_58

    goto/16 :goto_fd

    .line 208
    :cond_58
    if-eqz v9, :cond_1b7

    .line 209
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    .line 215
    .local v7, "width":I
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 217
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_80

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_80

    .line 218
    if-eqz v5, :cond_7b

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v3, v1, v8, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 221
    :cond_7b
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 223
    :cond_80
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_9c

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_9c

    .line 224
    if-eqz v5, :cond_97

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v3, v1, v8, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 227
    :cond_97
    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 229
    :cond_9c
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_b9

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_b9

    .line 230
    if-eqz v5, :cond_b3

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v1, v3, v14, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 233
    :cond_b3
    neg-int v10, v7

    invoke-virtual {v1, v3, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 235
    :cond_b9
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1b7

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1b7

    .line 236
    if-eqz v5, :cond_d5

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 240
    :cond_d5
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v13

    if-nez v10, :cond_e9

    .line 241
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    invoke-virtual {v3, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 243
    invoke-virtual {v1, v3, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 244
    invoke-virtual {v3, v1, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_1b7

    .line 247
    :cond_e9
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 248
    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 249
    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 250
    int-to-float v10, v7

    invoke-virtual {v3, v1, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 251
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto/16 :goto_1b7

    .line 170
    .end local v7    # "width":I
    :cond_fd
    :goto_fd
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_123

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_123

    .line 171
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 172
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 173
    if-eqz v5, :cond_11a

    .line 174
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 176
    :cond_11a
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 178
    :cond_123
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_148

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_148

    .line 179
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 180
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 181
    if-eqz v5, :cond_140

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 184
    :cond_140
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1b7

    .line 186
    :cond_148
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_175

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_175

    .line 187
    invoke-virtual {v1, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    invoke-virtual {v3, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 190
    if-eqz v5, :cond_16c

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_1b7

    .line 193
    :cond_16c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1b7

    .line 195
    :cond_175
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1b7

    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1b7

    .line 196
    invoke-virtual {v1, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 197
    invoke-virtual {v3, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 198
    if-eqz v5, :cond_1a6

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_1b7

    .line 204
    :cond_1a6
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 205
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 259
    :cond_1b7
    :goto_1b7
    iget-object v7, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v8

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v10, :cond_1c8

    .line 260
    invoke-static {v0, v8}, Landroidx/constraintlayout/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z

    move-result v7

    if-eqz v7, :cond_1c8

    move/from16 v16, v8

    goto :goto_1ca

    :cond_1c8
    const/16 v16, 0x0

    :goto_1ca
    move/from16 v7, v16

    .line 262
    .local v7, "isOptimizableVerticalMatch":Z
    iget v10, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_393

    iget v10, v4, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_393

    .line 265
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v8

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v12, :cond_29a

    if-eqz v7, :cond_1e6

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v6, :cond_1e6

    goto/16 :goto_29a

    .line 318
    :cond_1e6
    if-eqz v7, :cond_393

    .line 319
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    .line 324
    .local v6, "height":I
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 326
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_20e

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_20e

    .line 327
    if-eqz v5, :cond_209

    .line 328
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v2, v8, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_393

    .line 330
    :cond_209
    invoke-virtual {v4, v2, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_393

    .line 332
    :cond_20e
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_22a

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_22a

    .line 333
    if-eqz v5, :cond_225

    .line 334
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v2, v8, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_393

    .line 336
    :cond_225
    invoke-virtual {v4, v2, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_393

    .line 338
    :cond_22a
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_247

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_247

    .line 339
    if-eqz v5, :cond_241

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v2, v4, v14, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_393

    .line 342
    :cond_241
    neg-int v8, v6

    invoke-virtual {v2, v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_393

    .line 344
    :cond_247
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_393

    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_393

    .line 345
    if-eqz v5, :cond_263

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 349
    :cond_263
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v13

    if-nez v10, :cond_277

    .line 350
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 352
    invoke-virtual {v2, v4, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 353
    invoke-virtual {v4, v2, v13}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_393

    .line 355
    :cond_277
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 356
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 357
    neg-int v10, v6

    int-to-float v10, v10

    invoke-virtual {v2, v4, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 358
    int-to-float v10, v6

    invoke-virtual {v4, v2, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 359
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 360
    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v10, :cond_393

    .line 361
    iget-object v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget v11, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v10, v8, v2, v11}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_393

    .line 267
    .end local v6    # "height":I
    :cond_29a
    :goto_29a
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_2da

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_2da

    .line 268
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 270
    if-eqz v5, :cond_2b6

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_2bd

    .line 273
    :cond_2b6
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 275
    :goto_2bd
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_393

    .line 276
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 277
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 278
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v10, v10

    .line 277
    invoke-virtual {v2, v8, v6, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_393

    .line 280
    :cond_2da
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_30e

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_30e

    .line 281
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 282
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 283
    if-eqz v5, :cond_2f6

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_2fd

    .line 286
    :cond_2f6
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 288
    :goto_2fd
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_393

    .line 289
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_393

    .line 291
    :cond_30e
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_342

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_342

    .line 292
    invoke-virtual {v2, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 293
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 294
    if-eqz v5, :cond_32a

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v4, v14, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    goto :goto_332

    .line 297
    :cond_32a
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v2, v4, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 299
    :goto_332
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_393

    .line 300
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    goto :goto_393

    .line 302
    :cond_342
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_393

    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_393

    .line 303
    invoke-virtual {v2, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 304
    invoke-virtual {v4, v15}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 305
    if-eqz v5, :cond_373

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v4, v14, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;ILandroidx/constraintlayout/solver/widgets/ResolutionDimension;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroidx/constraintlayout/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/constraintlayout/solver/widgets/ResolutionDimension;->addDependent(Landroidx/constraintlayout/solver/widgets/ResolutionNode;)V

    goto :goto_384

    .line 311
    :cond_373
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v4, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v2, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->setOpposite(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 314
    :goto_384
    iget v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_393

    .line 315
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->dependsOn(ILandroidx/constraintlayout/solver/widgets/ResolutionAnchor;I)V

    .line 367
    :cond_393
    :goto_393
    return-void
.end method

.method static applyChainOptimized(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;IILandroidx/constraintlayout/solver/widgets/ChainHead;)Z
    .registers 43
    .param p0, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 383
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p4

    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 384
    .local v3, "first":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLast:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 385
    .local v4, "last":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v5, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 386
    .local v5, "firstVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v6, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 387
    .local v6, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mHead:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 389
    .local v7, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object v8, v3

    .line 390
    .local v8, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 391
    .local v9, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/4 v10, 0x0

    .line 393
    .local v10, "done":Z
    const/4 v11, 0x0

    .line 394
    .local v11, "numMatchConstraints":I
    iget v12, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mTotalWeight:F

    .line 395
    .local v12, "totalWeights":F
    iget-object v13, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 396
    .local v13, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v14, v2, Landroidx/constraintlayout/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 398
    .local v14, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move-object/from16 v15, p0

    iget-object v2, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v1

    move-object/from16 v16, v8

    .end local v8    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v16, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v17, 0x0

    move-object/from16 v18, v9

    .end local v9    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v18, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-ne v2, v8, :cond_2c

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2c
    move/from16 v2, v17

    .line 399
    .local v2, "isWrapContent":Z
    :goto_2e
    const/4 v8, 0x0

    .line 400
    .local v8, "isChainSpread":Z
    const/16 v19, 0x0

    .line 401
    .local v19, "isChainSpreadInside":Z
    const/16 v20, 0x0

    .line 403
    .local v20, "isChainPacked":Z
    if-nez v1, :cond_55

    .line 404
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v9, :cond_3b

    const/4 v9, 0x1

    goto :goto_3d

    :cond_3b
    move/from16 v9, v17

    :goto_3d
    move v8, v9

    .line 405
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v22, v2

    const/4 v2, 0x1

    .end local v2    # "isWrapContent":Z
    .local v22, "isWrapContent":Z
    if-ne v9, v2, :cond_47

    const/4 v2, 0x1

    goto :goto_49

    :cond_47
    move/from16 v2, v17

    .line 406
    .end local v19    # "isChainSpreadInside":Z
    .local v2, "isChainSpreadInside":Z
    :goto_49
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v19, v2

    const/4 v2, 0x2

    .end local v2    # "isChainSpreadInside":Z
    .restart local v19    # "isChainSpreadInside":Z
    if-ne v9, v2, :cond_52

    const/4 v2, 0x1

    goto :goto_54

    :cond_52
    move/from16 v2, v17

    .end local v20    # "isChainPacked":Z
    .local v2, "isChainPacked":Z
    :goto_54
    goto :goto_74

    .line 408
    .end local v22    # "isWrapContent":Z
    .local v2, "isWrapContent":Z
    .restart local v20    # "isChainPacked":Z
    :cond_55
    move/from16 v22, v2

    .end local v2    # "isWrapContent":Z
    .restart local v22    # "isWrapContent":Z
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v2, :cond_5d

    const/4 v2, 0x1

    goto :goto_5f

    :cond_5d
    move/from16 v2, v17

    :goto_5f
    move v8, v2

    .line 409
    iget v2, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v9, 0x1

    if-ne v2, v9, :cond_67

    const/4 v2, 0x1

    goto :goto_69

    :cond_67
    move/from16 v2, v17

    .line 410
    .end local v19    # "isChainSpreadInside":Z
    .local v2, "isChainSpreadInside":Z
    :goto_69
    iget v9, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v19, v2

    const/4 v2, 0x2

    .end local v2    # "isChainSpreadInside":Z
    .restart local v19    # "isChainSpreadInside":Z
    if-ne v9, v2, :cond_72

    const/4 v2, 0x1

    goto :goto_74

    :cond_72
    move/from16 v2, v17

    .line 417
    .end local v20    # "isChainPacked":Z
    .local v2, "isChainPacked":Z
    :goto_74
    const/4 v9, 0x0

    .line 418
    .local v9, "totalSize":F
    const/16 v20, 0x0

    .line 419
    .local v20, "totalMargins":F
    const/16 v21, 0x0

    move-object/from16 v37, v16

    move-object/from16 v16, v7

    move v7, v11

    move/from16 v11, v21

    move/from16 v21, v20

    move/from16 v20, v9

    move-object/from16 v9, v37

    .line 421
    .local v7, "numMatchConstraints":I
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v11, "numVisibleWidgets":I
    .local v16, "head":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v20, "totalSize":F
    .local v21, "totalMargins":F
    :goto_86
    const/16 v23, 0x0

    move-object/from16 v24, v13

    .end local v13    # "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v24, "firstMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    const/16 v13, 0x8

    if-nez v10, :cond_156

    .line 423
    move/from16 v25, v10

    .end local v10    # "done":Z
    .local v25, "done":Z
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-eq v10, v13, :cond_dd

    .line 424
    add-int/lit8 v11, v11, 0x1

    .line 425
    if-nez v1, :cond_a2

    .line 426
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float v20, v20, v10

    goto :goto_a9

    .line 428
    :cond_a2
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v20, v20, v10

    .line 430
    :goto_a9
    if-eq v9, v5, :cond_b6

    .line 431
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float v20, v20, v10

    .line 433
    :cond_b6
    if-eq v9, v6, :cond_c5

    .line 434
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v10, v10, v26

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float v20, v20, v10

    .line 436
    :cond_c5
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float v21, v21, v10

    .line 437
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v26, p3, 0x1

    aget-object v10, v10, v26

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float v21, v21, v10

    .line 440
    :cond_dd
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    .line 442
    .local v10, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    move-object/from16 v26, v10

    .end local v10    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v26, "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-eq v10, v13, :cond_119

    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v1

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v10, v13, :cond_119

    .line 444
    add-int/lit8 v7, v7, 0x1

    .line 446
    if-nez v1, :cond_103

    .line 447
    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v10, :cond_fa

    .line 448
    return v17

    .line 449
    :cond_fa
    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v10, :cond_102

    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v10, :cond_111

    .line 450
    :cond_102
    return v17

    .line 453
    :cond_103
    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v10, :cond_108

    .line 454
    return v17

    .line 455
    :cond_108
    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v10, :cond_118

    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v10, :cond_111

    goto :goto_118

    .line 459
    :cond_111
    iget v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v23

    if-eqz v10, :cond_119

    .line 460
    return v17

    .line 456
    :cond_118
    :goto_118
    return v17

    .line 465
    :cond_119
    iget-object v10, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v10, v10, v13

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 466
    .local v10, "nextAnchor":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    if-eqz v10, :cond_141

    .line 467
    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 468
    .end local v18    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v13, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v23, v7

    .end local v7    # "numMatchConstraints":I
    .local v23, "numMatchConstraints":I
    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_13d

    iget-object v7, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eq v7, v9, :cond_13a

    goto :goto_13d

    :cond_13a
    move-object/from16 v18, v13

    goto :goto_146

    .line 469
    :cond_13d
    :goto_13d
    const/4 v7, 0x0

    move-object/from16 v18, v7

    .end local v13    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_146

    .line 472
    .end local v23    # "numMatchConstraints":I
    .local v7, "numMatchConstraints":I
    .restart local v18    # "next":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_141
    move/from16 v23, v7

    .end local v7    # "numMatchConstraints":I
    .restart local v23    # "numMatchConstraints":I
    const/4 v7, 0x0

    move-object/from16 v18, v7

    .line 474
    :goto_146
    if-eqz v18, :cond_14e

    .line 475
    move-object/from16 v7, v18

    move-object v9, v7

    move/from16 v10, v25

    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    goto :goto_150

    .line 477
    .end local v7    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_14e
    const/4 v7, 0x1

    move v10, v7

    .line 479
    .end local v25    # "done":Z
    .end local v26    # "begin":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .local v10, "done":Z
    :goto_150
    move/from16 v7, v23

    move-object/from16 v13, v24

    goto/16 :goto_86

    .line 481
    .end local v23    # "numMatchConstraints":I
    .local v7, "numMatchConstraints":I
    :cond_156
    move/from16 v25, v10

    .end local v10    # "done":Z
    .restart local v25    # "done":Z
    iget-object v10, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v10

    .line 482
    .local v10, "firstNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    iget-object v13, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v27, p3, 0x1

    aget-object v13, v13, v27

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    .line 484
    .local v13, "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    move-object/from16 v27, v14

    .end local v14    # "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v27, "previousMatchConstraintsWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-eqz v14, :cond_458

    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    if-nez v14, :cond_17e

    move/from16 v28, v2

    move-object/from16 v33, v6

    move/from16 v36, v7

    move-object/from16 v34, v13

    goto/16 :goto_460

    .line 490
    :cond_17e
    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_44f

    iget-object v14, v13, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v14, v14, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    if-eq v14, v15, :cond_195

    move/from16 v28, v2

    move-object/from16 v33, v6

    move/from16 v36, v7

    move-object/from16 v34, v13

    goto/16 :goto_457

    .line 496
    :cond_195
    if-lez v7, :cond_19a

    if-eq v7, v11, :cond_19a

    .line 498
    return v17

    .line 501
    :cond_19a
    const/4 v14, 0x0

    .line 502
    .local v14, "extraMargin":F
    if-nez v2, :cond_1a1

    if-nez v8, :cond_1a1

    if-eqz v19, :cond_1ba

    .line 503
    :cond_1a1
    if-eqz v5, :cond_1ac

    .line 504
    iget-object v15, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v15, v15, p3

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    int-to-float v14, v15

    .line 506
    :cond_1ac
    if-eqz v6, :cond_1ba

    .line 507
    iget-object v15, v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v28, p3, 0x1

    aget-object v15, v15, v28

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v14, v15

    .line 511
    :cond_1ba
    iget-object v15, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v15, v15, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 512
    .local v15, "firstOffset":F
    move/from16 v28, v2

    .end local v2    # "isChainPacked":Z
    .local v28, "isChainPacked":Z
    iget-object v2, v13, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->target:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 513
    .local v2, "lastOffset":F
    const/16 v29, 0x0

    .line 514
    .local v29, "distance":F
    cmpg-float v30, v15, v2

    if-gez v30, :cond_1cf

    .line 515
    sub-float v30, v2, v15

    sub-float v30, v30, v20

    .end local v29    # "distance":F
    .local v30, "distance":F
    goto :goto_1d3

    .line 517
    .end local v30    # "distance":F
    .restart local v29    # "distance":F
    :cond_1cf
    sub-float v30, v15, v2

    sub-float v30, v30, v20

    .line 520
    .end local v29    # "distance":F
    .restart local v30    # "distance":F
    :goto_1d3
    const-wide/16 v31, 0x1

    if-lez v7, :cond_2ae

    if-ne v7, v11, :cond_2ae

    .line 521
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v29

    if-eqz v29, :cond_1f0

    move/from16 v29, v2

    .end local v2    # "lastOffset":F
    .local v29, "lastOffset":F
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, v1

    move-object/from16 v33, v6

    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v33, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v6, :cond_1f4

    .line 522
    return v17

    .line 521
    .end local v29    # "lastOffset":F
    .end local v33    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v2    # "lastOffset":F
    .restart local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1f0
    move/from16 v29, v2

    move-object/from16 v33, v6

    .line 524
    .end local v2    # "lastOffset":F
    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v29    # "lastOffset":F
    .restart local v33    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1f4
    add-float v30, v30, v20

    .line 525
    sub-float v30, v30, v21

    .line 526
    move-object v2, v3

    .line 527
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move v6, v15

    .line 528
    .local v6, "position":F
    :goto_1fa
    if-eqz v2, :cond_2aa

    .line 529
    sget-object v9, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v9, :cond_21d

    .line 530
    sget-object v9, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    move-object/from16 v34, v13

    move/from16 v35, v14

    .end local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v14    # "extraMargin":F
    .local v34, "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .local v35, "extraMargin":F
    iget-wide v13, v9, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v13, v13, v31

    iput-wide v13, v9, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 531
    sget-object v9, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v13, v9, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v13, v13, v31

    iput-wide v13, v9, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 532
    sget-object v9, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v13, v9, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v13, v13, v31

    iput-wide v13, v9, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    goto :goto_221

    .line 529
    .end local v34    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v35    # "extraMargin":F
    .restart local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v14    # "extraMargin":F
    :cond_21d
    move-object/from16 v34, v13

    move/from16 v35, v14

    .line 534
    .end local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v14    # "extraMargin":F
    .restart local v34    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v35    # "extraMargin":F
    :goto_221
    iget-object v9, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v18, v9, v1

    .line 535
    if-nez v18, :cond_22d

    if-ne v2, v4, :cond_22a

    goto :goto_22d

    :cond_22a
    move/from16 v36, v7

    goto :goto_2a0

    .line 536
    :cond_22d
    :goto_22d
    int-to-float v9, v7

    div-float v9, v30, v9

    .line 537
    .local v9, "dimension":F
    cmpl-float v13, v12, v23

    if-lez v13, :cond_248

    .line 538
    iget-object v13, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v13, v13, v1

    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_240

    .line 539
    const/4 v9, 0x0

    goto :goto_248

    .line 541
    :cond_240
    iget-object v13, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v13, v13, v1

    mul-float v13, v13, v30

    div-float v9, v13, v12

    .line 544
    :cond_248
    :goto_248
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_251

    .line 545
    const/4 v9, 0x0

    .line 547
    :cond_251
    iget-object v13, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v6, v13

    .line 548
    iget-object v13, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v13, v14, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 550
    iget-object v13, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, p3, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move/from16 v36, v7

    .end local v7    # "numMatchConstraints":I
    .local v36, "numMatchConstraints":I
    add-float v7, v6, v9

    invoke-virtual {v13, v14, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 552
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 553
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v7, v7, v13

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 554
    add-float/2addr v6, v9

    .line 555
    iget-object v7, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v7, v7, v13

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 557
    .end local v9    # "dimension":F
    :goto_2a0
    move-object/from16 v2, v18

    move-object/from16 v13, v34

    move/from16 v14, v35

    move/from16 v7, v36

    goto/16 :goto_1fa

    .line 559
    .end local v34    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v35    # "extraMargin":F
    .end local v36    # "numMatchConstraints":I
    .restart local v7    # "numMatchConstraints":I
    .restart local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v14    # "extraMargin":F
    :cond_2aa
    move/from16 v36, v7

    .end local v7    # "numMatchConstraints":I
    .restart local v36    # "numMatchConstraints":I
    const/4 v7, 0x1

    return v7

    .line 520
    .end local v29    # "lastOffset":F
    .end local v33    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v36    # "numMatchConstraints":I
    .local v2, "lastOffset":F
    .local v6, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "numMatchConstraints":I
    .local v9, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2ae
    move/from16 v29, v2

    move-object/from16 v33, v6

    move/from16 v36, v7

    move-object/from16 v34, v13

    move/from16 v35, v14

    .line 563
    .end local v2    # "lastOffset":F
    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "numMatchConstraints":I
    .end local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v14    # "extraMargin":F
    .restart local v29    # "lastOffset":F
    .restart local v33    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v34    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v35    # "extraMargin":F
    .restart local v36    # "numMatchConstraints":I
    cmpg-float v2, v30, v23

    if-gez v2, :cond_2c2

    .line 564
    const/4 v8, 0x0

    .line 565
    const/16 v19, 0x0

    .line 566
    const/4 v2, 0x1

    move/from16 v28, v2

    .line 569
    :cond_2c2
    if-eqz v28, :cond_358

    .line 570
    sub-float v30, v30, v35

    .line 572
    move-object v2, v3

    .line 573
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBiasPercent(I)F

    move-result v6

    mul-float v6, v6, v30

    add-float/2addr v6, v15

    move-object v9, v2

    move/from16 v30, v6

    .line 574
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_2d1
    if-eqz v9, :cond_44d

    .line 575
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_2ef

    .line 576
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v6, v6, v31

    iput-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 577
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v6, v6, v31

    iput-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 578
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v6, v6, v31

    iput-wide v6, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 580
    :cond_2ef
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v18, v2, v1

    .line 581
    if-nez v18, :cond_2f7

    if-ne v9, v4, :cond_354

    .line 582
    :cond_2f7
    const/4 v2, 0x0

    .line 583
    .local v2, "dimension":F
    if-nez v1, :cond_300

    .line 584
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    int-to-float v2, v6

    goto :goto_305

    .line 586
    :cond_300
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v2, v6

    .line 588
    :goto_305
    iget-object v6, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v6

    int-to-float v6, v6

    add-float v6, v30, v6

    .line 589
    .end local v30    # "distance":F
    .local v6, "distance":F
    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v7, v13, v6}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 591
    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v7, v7, v13

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v13, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    add-float v14, v6, v2

    invoke-virtual {v7, v13, v14}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 593
    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 594
    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v7, v7, v13

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 595
    add-float/2addr v6, v2

    .line 596
    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v7, v7, v13

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float v30, v6, v7

    .line 598
    .end local v2    # "dimension":F
    .end local v6    # "distance":F
    .restart local v30    # "distance":F
    :cond_354
    move-object/from16 v9, v18

    goto/16 :goto_2d1

    .line 600
    :cond_358
    if-nez v8, :cond_35c

    if-eqz v19, :cond_44d

    .line 601
    :cond_35c
    if-eqz v8, :cond_361

    .line 602
    sub-float v30, v30, v35

    goto :goto_365

    .line 603
    :cond_361
    if-eqz v19, :cond_365

    .line 604
    sub-float v30, v30, v35

    .line 606
    :cond_365
    :goto_365
    move-object v2, v3

    .line 607
    .end local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v6, v11, 0x1

    int-to-float v6, v6

    div-float v6, v30, v6

    .line 608
    .local v6, "gap":F
    if-eqz v19, :cond_37a

    .line 609
    const/4 v7, 0x1

    if-le v11, v7, :cond_376

    .line 610
    add-int/lit8 v7, v11, -0x1

    int-to-float v7, v7

    div-float v6, v30, v7

    goto :goto_37a

    .line 612
    :cond_376
    const/high16 v7, 0x40000000    # 2.0f

    div-float v6, v30, v7

    .line 615
    :cond_37a
    :goto_37a
    move v7, v15

    .line 616
    .end local v30    # "distance":F
    .local v7, "distance":F
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    const/16 v13, 0x8

    if-eq v9, v13, :cond_384

    .line 617
    add-float/2addr v7, v6

    .line 619
    :cond_384
    if-eqz v19, :cond_394

    const/4 v9, 0x1

    if-le v11, v9, :cond_394

    .line 620
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v7, v15, v9

    .line 622
    :cond_394
    if-eqz v8, :cond_3a6

    .line 623
    if-eqz v5, :cond_3a6

    .line 624
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    move-object v9, v2

    move/from16 v30, v7

    goto :goto_3a9

    .line 627
    :cond_3a6
    move-object v9, v2

    move/from16 v30, v7

    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "distance":F
    .restart local v9    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v30    # "distance":F
    :goto_3a9
    if-eqz v9, :cond_44d

    .line 628
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_3c7

    .line 629
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v13, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    sub-long v13, v13, v31

    iput-wide v13, v2, Landroidx/constraintlayout/solver/Metrics;->nonresolvedWidgets:J

    .line 630
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v13, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    add-long v13, v13, v31

    iput-wide v13, v2, Landroidx/constraintlayout/solver/Metrics;->resolvedWidgets:J

    .line 631
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v13, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    add-long v13, v13, v31

    iput-wide v13, v2, Landroidx/constraintlayout/solver/Metrics;->chainConnectionResolved:J

    .line 633
    :cond_3c7
    iget-object v2, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v18, v2, v1

    .line 634
    if-nez v18, :cond_3d4

    if-ne v9, v4, :cond_3d0

    goto :goto_3d4

    :cond_3d0
    const/16 v7, 0x8

    goto/16 :goto_447

    .line 635
    :cond_3d4
    :goto_3d4
    const/4 v2, 0x0

    .line 636
    .local v2, "dimension":F
    if-nez v1, :cond_3dd

    .line 637
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v2, v7

    goto :goto_3e2

    .line 639
    :cond_3dd
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v7

    int-to-float v2, v7

    .line 641
    :goto_3e2
    if-eq v9, v5, :cond_3f2

    .line 642
    iget-object v7, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float v30, v30, v7

    move/from16 v7, v30

    goto :goto_3f4

    .line 641
    :cond_3f2
    move/from16 v7, v30

    .line 644
    .end local v30    # "distance":F
    .restart local v7    # "distance":F
    :goto_3f4
    iget-object v13, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    invoke-virtual {v13, v14, v7}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 646
    iget-object v13, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v14, p3, 0x1

    aget-object v13, v13, v14

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v13

    iget-object v14, v10, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    add-float v1, v7, v2

    invoke-virtual {v13, v14, v1}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolve(Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;F)V

    .line 648
    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 649
    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v1, v1, v13

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 650
    iget-object v1, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    add-int/lit8 v13, p3, 0x1

    aget-object v1, v1, v13

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v2

    add-float v30, v7, v1

    .line 651
    .end local v7    # "distance":F
    .restart local v30    # "distance":F
    if-eqz v18, :cond_445

    invoke-virtual/range {v18 .. v18}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_447

    .line 652
    add-float v30, v30, v6

    goto :goto_447

    .line 651
    :cond_445
    const/16 v7, 0x8

    .line 655
    .end local v2    # "dimension":F
    :cond_447
    :goto_447
    move-object/from16 v9, v18

    move/from16 v1, p2

    goto/16 :goto_3a9

    .line 659
    .end local v6    # "gap":F
    :cond_44d
    const/4 v1, 0x1

    return v1

    .line 490
    .end local v15    # "firstOffset":F
    .end local v28    # "isChainPacked":Z
    .end local v29    # "lastOffset":F
    .end local v30    # "distance":F
    .end local v33    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v34    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v35    # "extraMargin":F
    .end local v36    # "numMatchConstraints":I
    .local v2, "isChainPacked":Z
    .local v6, "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .local v7, "numMatchConstraints":I
    .restart local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_44f
    move/from16 v28, v2

    move-object/from16 v33, v6

    move/from16 v36, v7

    move-object/from16 v34, v13

    .line 493
    .end local v2    # "isChainPacked":Z
    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "numMatchConstraints":I
    .end local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v28    # "isChainPacked":Z
    .restart local v33    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v34    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v36    # "numMatchConstraints":I
    :goto_457
    return v17

    .line 484
    .end local v28    # "isChainPacked":Z
    .end local v33    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v34    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .end local v36    # "numMatchConstraints":I
    .restart local v2    # "isChainPacked":Z
    .restart local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v7    # "numMatchConstraints":I
    .restart local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    :cond_458
    move/from16 v28, v2

    move-object/from16 v33, v6

    move/from16 v36, v7

    move-object/from16 v34, v13

    .line 486
    .end local v2    # "isChainPacked":Z
    .end local v6    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "numMatchConstraints":I
    .end local v13    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v28    # "isChainPacked":Z
    .restart local v33    # "lastVisibleWidget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v34    # "lastNode":Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;
    .restart local v36    # "numMatchConstraints":I
    :goto_460
    return v17
.end method

.method static checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .registers 8
    .param p0, "container"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 57
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_46

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_46

    .line 60
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 61
    .local v0, "left":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 68
    .local v1, "right":I
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 70
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 71
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 72
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 74
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 76
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_46
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_ab

    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_ab

    .line 79
    iget-object v0, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 80
    .local v0, "top":I
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 87
    .local v1, "bottom":I
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 88
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 89
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 90
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 91
    iget v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v2, :cond_92

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_a6

    .line 92
    :cond_92
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 93
    iget-object v2, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroidx/constraintlayout/solver/LinearSystem;->addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V

    .line 95
    :cond_a6
    iput v3, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 97
    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 99
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_ab
    return-void
.end method

.method private static optimizableMatchConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)Z
    .registers 5
    .param p0, "constraintWidget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .line 111
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 112
    return v2

    .line 114
    :cond_a
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 115
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    aget-object v0, v0, v1

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1f

    .line 117
    return v2

    .line 120
    :cond_1f
    return v2

    .line 122
    :cond_20
    if-nez p1, :cond_30

    .line 123
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v0, :cond_27

    .line 124
    return v2

    .line 126
    :cond_27
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_2f

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v0, :cond_3e

    .line 127
    :cond_2f
    return v2

    .line 130
    :cond_30
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v0, :cond_35

    .line 131
    return v2

    .line 133
    :cond_35
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_3f

    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v0, :cond_3e

    goto :goto_3f

    .line 137
    :cond_3e
    return v1

    .line 134
    :cond_3f
    :goto_3f
    return v2
.end method

.method static setOptimizedWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;II)V
    .registers 8
    .param p0, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I
    .param p2, "resolvedOffset"    # I

    .line 671
    mul-int/lit8 v0, p1, 0x2

    .line 672
    .local v0, "startOffset":I
    add-int/lit8 v1, v0, 0x1

    .line 674
    .local v1, "endOffset":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 675
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 676
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    int-to-float v3, p2

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 678
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 680
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, v0

    .line 681
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v4

    iput-object v4, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    .line 682
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 683
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getLength(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 684
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;

    move-result-object v2

    iput v3, v2, Landroidx/constraintlayout/solver/widgets/ResolutionAnchor;->state:I

    .line 685
    return-void
.end method
