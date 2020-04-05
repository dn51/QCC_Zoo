.class Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 5
    .param p1, "this$0"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 5033
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5025
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5028
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5031
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5034
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5035
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .registers 18
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 5202
    move-object v0, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5203
    .local v1, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5204
    .local v2, "absDy":I
    if-le v1, v2, :cond_d

    const/4 v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    .line 5205
    .local v3, "horizontal":Z
    :goto_e
    mul-int v4, p3, p3

    mul-int v5, p4, p4

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 5206
    .local v4, "velocity":I
    mul-int v5, p1, p1

    mul-int v6, p2, p2

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 5207
    .local v5, "delta":I
    iget-object v6, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_2d

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v6

    goto :goto_31

    :cond_2d
    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v6

    .line 5208
    .local v6, "containerSize":I
    :goto_31
    div-int/lit8 v7, v6, 0x2

    .line 5209
    .local v7, "halfContainerSize":I
    int-to-float v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    int-to-float v10, v6

    div-float/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 5210
    .local v8, "distanceRatio":F
    int-to-float v10, v7

    int-to-float v11, v7

    .line 5211
    invoke-direct {p0, v8}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 5214
    .local v10, "distance":F
    if-lez v4, :cond_58

    .line 5215
    const/high16 v9, 0x447a0000    # 1000.0f

    int-to-float v11, v4

    div-float v11, v10, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    mul-int/lit8 v9, v9, 0x4

    .local v9, "duration":I
    goto :goto_66

    .line 5217
    .end local v9    # "duration":I
    :cond_58
    if-eqz v3, :cond_5c

    move v11, v1

    goto :goto_5d

    :cond_5c
    move v11, v2

    :goto_5d
    int-to-float v11, v11

    .line 5218
    .local v11, "absDelta":F
    int-to-float v12, v6

    div-float v12, v11, v12

    add-float/2addr v12, v9

    const/high16 v9, 0x43960000    # 300.0f

    mul-float/2addr v12, v9

    float-to-int v9, v12

    .line 5220
    .end local v11    # "absDelta":F
    .restart local v9    # "duration":I
    :goto_66
    const/16 v11, 0x7d0

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    return v11
.end method

.method private disableRunOnAnimationRequests()V
    .registers 2

    .line 5159
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 5160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5161
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .registers 4
    .param p1, "f"    # F

    .line 5196
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 5197
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 5198
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .registers 2

    .line 5164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 5165
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v0, :cond_a

    .line 5166
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5168
    :cond_a
    return-void
.end method


# virtual methods
.method public fling(II)V
    .registers 13
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 5180
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5181
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5182
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5184
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5185
    return-void
.end method

.method postOnAnimation()V
    .registers 2

    .line 5171
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v0, :cond_8

    .line 5172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    goto :goto_12

    .line 5174
    :cond_8
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5175
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5177
    :goto_12
    return-void
.end method

.method public run()V
    .registers 27

    .line 5039
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_c

    .line 5040
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 5041
    return-void

    .line 5043
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 5044
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 5047
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5048
    .local v1, "scroller":Landroid/widget/OverScroller;
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 5049
    .local v2, "smoothScroller":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1c3

    .line 5050
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mScrollConsumed:[I

    .line 5051
    .local v3, "scrollConsumed":[I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v11

    .line 5052
    .local v11, "x":I
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v12

    .line 5053
    .local v12, "y":I
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    sub-int v13, v11, v5

    .line 5054
    .local v13, "dx":I
    iget v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    sub-int v14, v12, v5

    .line 5055
    .local v14, "dy":I
    const/4 v15, 0x0

    .line 5056
    .local v15, "hresult":I
    const/16 v16, 0x0

    .line 5057
    .local v16, "vresult":I
    iput v11, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5058
    iput v12, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 5059
    const/16 v17, 0x0

    .local v17, "overscrollX":I
    const/16 v18, 0x0

    .line 5061
    .local v18, "overscrollY":I
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, v13

    move v7, v14

    move-object v8, v3

    invoke-virtual/range {v5 .. v10}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_56

    .line 5062
    aget v5, v3, v4

    sub-int/2addr v13, v5

    .line 5063
    aget v5, v3, v6

    sub-int/2addr v14, v5

    .line 5066
    :cond_56
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v5, :cond_b0

    .line 5067
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v5, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    invoke-virtual {v5, v13, v14, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 5068
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    aget v15, v5, v4

    .line 5069
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mScrollStepConsumed:[I

    aget v16, v5, v6

    .line 5070
    sub-int v17, v13, v15

    .line 5071
    sub-int v18, v14, v16

    .line 5073
    if-eqz v2, :cond_a9

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v5

    if-nez v5, :cond_a9

    .line 5074
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 5075
    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    .line 5076
    .local v5, "adapterSize":I
    if-nez v5, :cond_8f

    .line 5077
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_a9

    .line 5078
    :cond_8f
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v7

    if-lt v7, v5, :cond_a2

    .line 5079
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 5080
    sub-int v7, v13, v17

    sub-int v8, v14, v18

    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    goto :goto_a9

    .line 5082
    :cond_a2
    sub-int v7, v13, v17

    sub-int v8, v14, v18

    invoke-virtual {v2, v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 5086
    .end local v5    # "adapterSize":I
    :cond_a9
    :goto_a9
    move/from16 v5, v16

    move/from16 v7, v17

    move/from16 v8, v18

    goto :goto_b6

    .line 5066
    :cond_b0
    move/from16 v5, v16

    move/from16 v7, v17

    move/from16 v8, v18

    .line 5086
    .end local v16    # "vresult":I
    .end local v17    # "overscrollX":I
    .end local v18    # "overscrollY":I
    .local v5, "vresult":I
    .local v7, "overscrollX":I
    .local v8, "overscrollY":I
    :goto_b6
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c5

    .line 5087
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5089
    :cond_c5
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_d3

    .line 5090
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 5093
    :cond_d3
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v19, v9

    move/from16 v20, v15

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v23, v8

    invoke-virtual/range {v19 .. v25}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v9

    if-nez v9, :cond_141

    if-nez v7, :cond_f1

    if-eqz v8, :cond_ee

    goto :goto_f1

    :cond_ee
    move-object/from16 v16, v3

    goto :goto_143

    .line 5096
    :cond_f1
    :goto_f1
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v9

    float-to-int v9, v9

    .line 5098
    .local v9, "vel":I
    const/16 v16, 0x0

    .line 5099
    .local v16, "velX":I
    if-eq v7, v11, :cond_106

    .line 5100
    if-gez v7, :cond_fe

    neg-int v4, v9

    goto :goto_103

    :cond_fe
    if-lez v7, :cond_102

    move v4, v9

    goto :goto_103

    :cond_102
    const/4 v4, 0x0

    :goto_103
    move/from16 v16, v4

    goto :goto_108

    .line 5099
    :cond_106
    move/from16 v4, v16

    .line 5103
    .end local v16    # "velX":I
    .local v4, "velX":I
    :goto_108
    const/16 v16, 0x0

    .line 5104
    .local v16, "velY":I
    if-eq v8, v12, :cond_118

    .line 5105
    if-gez v8, :cond_110

    neg-int v6, v9

    goto :goto_115

    :cond_110
    if-lez v8, :cond_114

    move v6, v9

    goto :goto_115

    :cond_114
    const/4 v6, 0x0

    :goto_115
    move/from16 v16, v6

    goto :goto_11a

    .line 5104
    :cond_118
    move/from16 v6, v16

    .line 5108
    .end local v16    # "velY":I
    .local v6, "velY":I
    :goto_11a
    move-object/from16 v16, v3

    .end local v3    # "scrollConsumed":[I
    .local v16, "scrollConsumed":[I
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v3

    if-eq v3, v10, :cond_129

    .line 5109
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4, v6}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 5111
    :cond_129
    if-nez v4, :cond_133

    if-eq v7, v11, :cond_133

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    if-nez v3, :cond_143

    :cond_133
    if-nez v6, :cond_13d

    if-eq v8, v12, :cond_13d

    .line 5112
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-nez v3, :cond_143

    .line 5113
    :cond_13d
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    goto :goto_143

    .line 5093
    .end local v4    # "velX":I
    .end local v6    # "velY":I
    .end local v9    # "vel":I
    .end local v16    # "scrollConsumed":[I
    .restart local v3    # "scrollConsumed":[I
    :cond_141
    move-object/from16 v16, v3

    .line 5116
    .end local v3    # "scrollConsumed":[I
    .restart local v16    # "scrollConsumed":[I
    :cond_143
    :goto_143
    if-nez v15, :cond_147

    if-eqz v5, :cond_14c

    .line 5117
    :cond_147
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v15, v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5120
    :cond_14c
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_159

    .line 5121
    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5124
    :cond_159
    if-eqz v14, :cond_169

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_169

    if-ne v5, v14, :cond_169

    const/4 v3, 0x1

    goto :goto_16a

    :cond_169
    const/4 v3, 0x0

    .line 5126
    .local v3, "fullyConsumedVertical":Z
    :goto_16a
    if-eqz v13, :cond_17a

    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_17a

    if-ne v15, v13, :cond_17a

    const/4 v4, 0x1

    goto :goto_17b

    :cond_17a
    const/4 v4, 0x0

    .line 5128
    .local v4, "fullyConsumedHorizontal":Z
    :goto_17b
    if-nez v13, :cond_17f

    if-eqz v14, :cond_186

    :cond_17f
    if-nez v4, :cond_186

    if-eqz v3, :cond_184

    goto :goto_186

    :cond_184
    const/4 v6, 0x0

    goto :goto_187

    :cond_186
    :goto_186
    const/4 v6, 0x1

    .line 5131
    .local v6, "fullyConsumedAny":Z
    :goto_187
    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1ac

    if-nez v6, :cond_199

    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5132
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->hasNestedScrollingParent(I)Z

    move-result v9

    if-nez v9, :cond_199

    goto :goto_1ac

    .line 5140
    :cond_199
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5141
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    if-eqz v9, :cond_1c3

    .line 5142
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/GapWorker;

    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9, v10, v13, v14}, Landroidx/recyclerview/widget/GapWorker;->postFromTraversal(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_1c3

    .line 5134
    :cond_1ac
    :goto_1ac
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5135
    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v9, :cond_1bd

    .line 5136
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    .line 5138
    :cond_1bd
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 5147
    .end local v3    # "fullyConsumedVertical":Z
    .end local v4    # "fullyConsumedHorizontal":Z
    .end local v5    # "vresult":I
    .end local v6    # "fullyConsumedAny":Z
    .end local v7    # "overscrollX":I
    .end local v8    # "overscrollY":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "dx":I
    .end local v14    # "dy":I
    .end local v15    # "hresult":I
    .end local v16    # "scrollConsumed":[I
    :cond_1c3
    :goto_1c3
    if-eqz v2, :cond_1d6

    .line 5148
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v3

    if-eqz v3, :cond_1cf

    .line 5149
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    .line 5151
    :cond_1cf
    iget-boolean v3, v0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v3, :cond_1d6

    .line 5152
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 5155
    :cond_1d6
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 5156
    return-void
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 5188
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 5189
    return-void
.end method

.method public smoothScrollBy(III)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .line 5224
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5225
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "vx"    # I
    .param p4, "vy"    # I

    .line 5192
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 5193
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 5233
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_13

    .line 5234
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 5235
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    .line 5237
    :cond_13
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5238
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 5239
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_33

    .line 5244
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 5246
    :cond_33
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 5247
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 5228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v0

    if-nez p3, :cond_a

    sget-object v1, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_b

    :cond_a
    move-object v1, p3

    :goto_b
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 5230
    return-void
.end method

.method public stop()V
    .registers 2

    .line 5250
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5251
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5252
    return-void
.end method
