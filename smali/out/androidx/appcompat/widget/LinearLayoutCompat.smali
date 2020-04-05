.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.appcompat.widget.LinearLayoutCompat"

.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 116
    const/4 v2, 0x0

    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 120
    const v3, 0x800033

    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 159
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v3

    .line 162
    .local v3, "a":Landroidx/appcompat/widget/TintTypedArray;
    sget v4, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 163
    .local v4, "index":I
    if-ltz v4, :cond_22

    .line 164
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 167
    :cond_22
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v4

    .line 168
    if-ltz v4, :cond_2d

    .line 169
    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 172
    :cond_2d
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {v3, v5, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 173
    .local v0, "baselineAligned":Z
    if-nez v0, :cond_38

    .line 174
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 177
    :cond_38
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 v6, -0x40800000    # -1.0f

    invoke-virtual {v3, v5, v6}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 179
    sget v5, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 180
    invoke-virtual {v3, v5, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 182
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 184
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 186
    sget v1, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 188
    invoke-virtual {v3}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 189
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "widthMeasureSpec"    # I

    .line 1321
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1323
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3b

    .line 1324
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1325
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_38

    .line 1326
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1328
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 1331
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1332
    .local v10, "oldWidth":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1335
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, p2

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1336
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 1323
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldWidth":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1340
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 14
    .param p1, "count"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 899
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 901
    .local v0, "uniformMeasureSpec":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, p1, :cond_3b

    .line 902
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 903
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_38

    .line 904
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 906
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_38

    .line 909
    iget v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 910
    .local v10, "oldHeight":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 913
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 914
    iput v10, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 901
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v10    # "oldHeight":I
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 918
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 1649
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1650
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1755
    instance-of v0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 326
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 327
    .local v0, "count":I
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    .line 328
    .local v1, "isLayoutRtl":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_3f

    .line 329
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 331
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 332
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 333
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 335
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_2f

    .line 336
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .local v5, "position":I
    goto :goto_39

    .line 338
    .end local v5    # "position":I
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v5, v6

    .line 340
    .restart local v5    # "position":I
    :goto_39
    invoke-virtual {p0, p1, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 328
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "position":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 345
    .end local v2    # "i":I
    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 346
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 348
    .local v2, "child":Landroid/view/View;
    if-nez v2, :cond_61

    .line 349
    if-eqz v1, :cond_54

    .line 350
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v3

    .local v3, "position":I
    goto :goto_7d

    .line 352
    .end local v3    # "position":I
    :cond_54
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .restart local v3    # "position":I
    goto :goto_7d

    .line 355
    .end local v3    # "position":I
    :cond_61
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 356
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v1, :cond_75

    .line 357
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v4, v5

    move v3, v4

    .local v4, "position":I
    goto :goto_7d

    .line 359
    .end local v4    # "position":I
    :cond_75
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v3, v4, v5

    .line 362
    .local v3, "position":I
    :goto_7d
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 364
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_80
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 299
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 300
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 301
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 303
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 304
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 306
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v4, v5

    .line 307
    .local v4, "top":I
    invoke-virtual {p0, p1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 300
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v4    # "top":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 312
    .end local v1    # "i":I
    :cond_31
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 313
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 314
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 315
    .local v2, "bottom":I
    if-nez v1, :cond_4e

    .line 316
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v3, v4

    move v2, v3

    .end local v2    # "bottom":I
    .local v3, "bottom":I
    goto :goto_5c

    .line 318
    .end local v3    # "bottom":I
    .restart local v2    # "bottom":I
    :cond_4e
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 319
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v2, v4, v5

    .line 321
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_5c
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 323
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "bottom":I
    :cond_5f
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "top"    # I

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 368
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 367
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 374
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 373
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 376
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4

    .line 1738
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, -0x2

    if-nez v0, :cond_b

    .line 1739
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1740
    :cond_b
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1741
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object v0

    .line 1743
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1725
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1748
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 7

    .line 427
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 428
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0

    .line 431
    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_78

    .line 436
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 439
    .local v1, "childBaseline":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 440
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez v3, :cond_21

    .line 442
    return v2

    .line 446
    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_29
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 458
    .local v2, "childTop":I
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6d

    .line 459
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    .line 460
    .local v3, "majorGravity":I
    const/16 v4, 0x30

    if-eq v3, v4, :cond_6d

    .line 461
    const/16 v4, 0x10

    if-eq v3, v4, :cond_54

    const/16 v4, 0x50

    if-eq v3, v4, :cond_41

    goto :goto_6d

    .line 463
    :cond_41
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v2, v4, v5

    .line 464
    goto :goto_6d

    .line 467
    :cond_54
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 474
    .end local v3    # "majorGravity":I
    :cond_6d
    :goto_6d
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 475
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v4, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    return v4

    .line 432
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBaseline":I
    .end local v2    # "childTop":I
    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .line 484
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 1351
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 225
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    .line 272
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    .line 282
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    .line 1704
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1393
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1405
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .line 1671
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .line 216
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "index"    # I

    .line 509
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .line 522
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .line 533
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .param p1, "childIndex"    # I

    .line 570
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 571
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_a

    move v0, v1

    :cond_a
    return v0

    .line 572
    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 573
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    move v0, v1

    :cond_18
    return v0

    .line 574
    :cond_19
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_36

    .line 575
    const/4 v0, 0x0

    .line 576
    .local v0, "hasVisibleViewBefore":Z
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_22
    if-ltz v1, :cond_35

    .line 577
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_32

    .line 578
    const/4 v0, 0x1

    .line 579
    goto :goto_35

    .line 576
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 582
    .end local v1    # "i":I
    :cond_35
    :goto_35
    return v0

    .line 584
    .end local v0    # "hasVisibleViewBefore":Z
    :cond_36
    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .line 385
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 38
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1525
    move-object/from16 v6, p0

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v7

    .line 1526
    .local v7, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v8

    .line 1532
    .local v8, "paddingTop":I
    sub-int v9, p4, p2

    .line 1533
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v0

    sub-int v10, v9, v0

    .line 1536
    .local v10, "childBottom":I
    sub-int v0, v9, v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    sub-int v11, v0, v1

    .line 1538
    .local v11, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v12

    .line 1540
    .local v12, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v1, 0x800007

    and-int v13, v0, v1

    .line 1541
    .local v13, "majorGravity":I
    and-int/lit8 v14, v0, 0x70

    .line 1543
    .local v14, "minorGravity":I
    iget-boolean v15, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1545
    .local v15, "baselineAligned":Z
    iget-object v5, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1546
    .local v5, "maxAscent":[I
    iget-object v4, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1548
    .local v4, "maxDescent":[I
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1549
    .local v3, "layoutDirection":I
    invoke-static {v13, v3}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/16 v16, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_42

    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    .local v0, "childLeft":I
    goto :goto_5b

    .line 1552
    .end local v0    # "childLeft":I
    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    add-int v0, v0, p3

    sub-int v0, v0, p1

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1553
    .restart local v0    # "childLeft":I
    goto :goto_5b

    .line 1557
    .end local v0    # "childLeft":I
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    sub-int v1, p3, p1

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1558
    .restart local v0    # "childLeft":I
    nop

    .line 1566
    :goto_5b
    const/4 v1, 0x0

    .line 1567
    .local v1, "start":I
    const/4 v2, 0x1

    .line 1569
    .local v2, "dir":I
    if-eqz v7, :cond_67

    .line 1570
    add-int/lit8 v1, v12, -0x1

    .line 1571
    const/4 v2, -0x1

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_6b

    .line 1569
    :cond_67
    move/from16 v18, v1

    move/from16 v19, v2

    .line 1574
    .end local v1    # "start":I
    .end local v2    # "dir":I
    .local v18, "start":I
    .local v19, "dir":I
    :goto_6b
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_6d
    if-ge v2, v12, :cond_177

    .line 1575
    mul-int v1, v19, v2

    add-int v1, v18, v1

    .line 1576
    .local v1, "childIndex":I
    move/from16 v20, v7

    .end local v7    # "isLayoutRtl":Z
    .local v20, "isLayoutRtl":Z
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1578
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_91

    .line 1579
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    move/from16 v22, v3

    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v12

    const/16 v21, 0x1

    goto/16 :goto_165

    .line 1580
    :cond_91
    move/from16 v21, v2

    .end local v2    # "i":I
    .local v21, "i":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v2

    move/from16 v22, v3

    .end local v3    # "layoutDirection":I
    .local v22, "layoutDirection":I
    const/16 v3, 0x8

    if-eq v2, v3, :cond_154

    .line 1581
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 1582
    .local v23, "childWidth":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v24

    .line 1583
    .local v24, "childHeight":I
    const/4 v2, -0x1

    .line 1585
    .local v2, "childBaseline":I
    nop

    .line 1586
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1588
    .local v3, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v25, v2

    .end local v2    # "childBaseline":I
    .local v25, "childBaseline":I
    const/4 v2, -0x1

    if-eqz v15, :cond_bd

    move/from16 v26, v9

    .end local v9    # "height":I
    .local v26, "height":I
    iget v9, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-eq v9, v2, :cond_bf

    .line 1589
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    move-result v9

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    goto :goto_c1

    .line 1588
    .end local v26    # "height":I
    .local v9, "height":I
    .restart local v25    # "childBaseline":I
    :cond_bd
    move/from16 v26, v9

    .line 1592
    .end local v9    # "height":I
    .restart local v26    # "height":I
    :cond_bf
    move/from16 v9, v25

    .end local v25    # "childBaseline":I
    .local v9, "childBaseline":I
    :goto_c1
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1593
    .local v2, "gravity":I
    if-gez v2, :cond_c9

    .line 1594
    move v2, v14

    move/from16 v27, v2

    goto :goto_cb

    .line 1593
    :cond_c9
    move/from16 v27, v2

    .line 1597
    .end local v2    # "gravity":I
    .local v27, "gravity":I
    :goto_cb
    and-int/lit8 v2, v27, 0x70

    move/from16 v28, v12

    .end local v12    # "count":I
    .local v28, "count":I
    const/16 v12, 0x10

    if-eq v2, v12, :cond_107

    const/16 v12, 0x30

    if-eq v2, v12, :cond_f5

    const/16 v12, 0x50

    if-eq v2, v12, :cond_de

    .line 1629
    move v2, v8

    move v12, v2

    .local v2, "childTop":I
    goto :goto_114

    .line 1622
    .end local v2    # "childTop":I
    :cond_de
    sub-int v2, v10, v24

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v12

    .line 1623
    .restart local v2    # "childTop":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_f3

    .line 1624
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int/2addr v12, v9

    .line 1625
    .local v12, "descent":I
    aget v25, v4, v16

    sub-int v25, v25, v12

    sub-int v2, v2, v25

    .line 1626
    .end local v12    # "descent":I
    move v12, v2

    goto :goto_114

    .line 1623
    :cond_f3
    move v12, v2

    goto :goto_114

    .line 1599
    .end local v2    # "childTop":I
    :cond_f5
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v8

    .line 1600
    .restart local v2    # "childTop":I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_104

    .line 1601
    const/4 v12, 0x1

    aget v17, v5, v12

    sub-int v17, v17, v9

    add-int v2, v2, v17

    move v12, v2

    goto :goto_114

    .line 1600
    :cond_104
    const/4 v12, 0x1

    move v12, v2

    goto :goto_114

    .line 1617
    .end local v2    # "childTop":I
    :cond_107
    const/4 v12, 0x1

    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v12

    iget v12, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v12

    .line 1619
    .restart local v2    # "childTop":I
    move v12, v2

    .line 1633
    .end local v2    # "childTop":I
    .local v12, "childTop":I
    :goto_114
    invoke-virtual {v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 1634
    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v0, v2

    .line 1637
    :cond_11d
    iget v2, v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v25, v0, v2

    .line 1638
    .end local v0    # "childLeft":I
    .local v25, "childLeft":I
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v2, v25, v0

    move-object/from16 v0, p0

    move/from16 v29, v8

    move v8, v1

    .end local v1    # "childIndex":I
    .local v8, "childIndex":I
    .local v29, "paddingTop":I
    move-object v1, v7

    move/from16 v17, v21

    const/16 v21, 0x1

    .end local v21    # "i":I
    .local v17, "i":I
    move/from16 v30, v9

    move-object v9, v3

    .end local v3    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v30, "childBaseline":I
    move v3, v12

    move-object/from16 v31, v4

    .end local v4    # "maxDescent":[I
    .local v31, "maxDescent":[I
    move/from16 v4, v23

    move-object/from16 v32, v5

    .end local v5    # "maxAscent":[I
    .local v32, "maxAscent":[I
    move/from16 v5, v24

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1640
    iget v0, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v0, v23, v0

    .line 1641
    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v25, v25, v0

    .line 1643
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v2, v17, v0

    move/from16 v0, v25

    .end local v17    # "i":I
    .local v2, "i":I
    goto :goto_165

    .line 1580
    .end local v2    # "i":I
    .end local v23    # "childWidth":I
    .end local v24    # "childHeight":I
    .end local v25    # "childLeft":I
    .end local v26    # "height":I
    .end local v27    # "gravity":I
    .end local v28    # "count":I
    .end local v29    # "paddingTop":I
    .end local v30    # "childBaseline":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .restart local v0    # "childLeft":I
    .restart local v1    # "childIndex":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v8, "paddingTop":I
    .local v9, "height":I
    .local v12, "count":I
    .restart local v21    # "i":I
    :cond_154
    move-object/from16 v31, v4

    move-object/from16 v32, v5

    move/from16 v29, v8

    move/from16 v26, v9

    move/from16 v28, v12

    move/from16 v17, v21

    const/16 v21, 0x1

    move v8, v1

    .end local v1    # "childIndex":I
    .end local v4    # "maxDescent":[I
    .end local v5    # "maxAscent":[I
    .end local v9    # "height":I
    .end local v12    # "count":I
    .end local v21    # "i":I
    .local v8, "childIndex":I
    .restart local v17    # "i":I
    .restart local v26    # "height":I
    .restart local v28    # "count":I
    .restart local v29    # "paddingTop":I
    .restart local v31    # "maxDescent":[I
    .restart local v32    # "maxAscent":[I
    move/from16 v2, v17

    .line 1574
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childIndex":I
    .end local v17    # "i":I
    .restart local v2    # "i":I
    :goto_165
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v20

    move/from16 v3, v22

    move/from16 v9, v26

    move/from16 v12, v28

    move/from16 v8, v29

    move-object/from16 v4, v31

    move-object/from16 v5, v32

    goto/16 :goto_6d

    .line 1646
    .end local v2    # "i":I
    .end local v20    # "isLayoutRtl":Z
    .end local v22    # "layoutDirection":I
    .end local v26    # "height":I
    .end local v28    # "count":I
    .end local v29    # "paddingTop":I
    .end local v31    # "maxDescent":[I
    .end local v32    # "maxAscent":[I
    .local v3, "layoutDirection":I
    .restart local v4    # "maxDescent":[I
    .restart local v5    # "maxAscent":[I
    .local v7, "isLayoutRtl":Z
    .local v8, "paddingTop":I
    .restart local v9    # "height":I
    .restart local v12    # "count":I
    :cond_177
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 30
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1430
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v7

    .line 1436
    .local v7, "paddingLeft":I
    sub-int v8, p3, p1

    .line 1437
    .local v8, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v0

    sub-int v9, v8, v0

    .line 1440
    .local v9, "childRight":I
    sub-int v0, v8, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    sub-int v10, v0, v1

    .line 1442
    .local v10, "childSpace":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 1444
    .local v11, "count":I
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v12, v0, 0x70

    .line 1445
    .local v12, "majorGravity":I
    const v1, 0x800007

    and-int v13, v0, v1

    .line 1447
    .local v13, "minorGravity":I
    const/16 v0, 0x10

    if-eq v12, v0, :cond_3c

    const/16 v0, 0x50

    if-eq v12, v0, :cond_30

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    .local v0, "childTop":I
    goto :goto_49

    .line 1450
    .end local v0    # "childTop":I
    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    .line 1451
    .restart local v0    # "childTop":I
    goto :goto_49

    .line 1455
    .end local v0    # "childTop":I
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1456
    .restart local v0    # "childTop":I
    nop

    .line 1464
    :goto_49
    const/4 v1, 0x0

    move v14, v1

    .local v14, "i":I
    :goto_4b
    if-ge v14, v11, :cond_f0

    .line 1465
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1466
    .local v15, "child":Landroid/view/View;
    const/4 v5, 0x1

    if-nez v15, :cond_5f

    .line 1467
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    move/from16 v19, v5

    move/from16 v24, v7

    goto/16 :goto_ea

    .line 1468
    :cond_5f
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_e6

    .line 1469
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 1470
    .local v16, "childWidth":I
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    .line 1472
    .local v17, "childHeight":I
    nop

    .line 1473
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1475
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    .line 1476
    .local v1, "gravity":I
    if-gez v1, :cond_7e

    .line 1477
    move v1, v13

    move v3, v1

    goto :goto_7f

    .line 1476
    :cond_7e
    move v3, v1

    .line 1479
    .end local v1    # "gravity":I
    .local v3, "gravity":I
    :goto_7f
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1480
    .local v2, "layoutDirection":I
    invoke-static {v3, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v18

    .line 1482
    .local v18, "absoluteGravity":I
    and-int/lit8 v1, v18, 0x7

    if-eq v1, v5, :cond_9c

    const/4 v5, 0x5

    if-eq v1, v5, :cond_94

    .line 1494
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    move/from16 v20, v1

    .local v1, "childLeft":I
    goto :goto_a9

    .line 1489
    .end local v1    # "childLeft":I
    :cond_94
    sub-int v1, v9, v16

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1490
    .restart local v1    # "childLeft":I
    move/from16 v20, v1

    goto :goto_a9

    .line 1484
    .end local v1    # "childLeft":I
    :cond_9c
    sub-int v1, v10, v16

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    .line 1486
    .restart local v1    # "childLeft":I
    move/from16 v20, v1

    .line 1498
    .end local v1    # "childLeft":I
    .local v20, "childLeft":I
    :goto_a9
    invoke-virtual {v6, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1499
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1502
    :cond_b2
    iget v1, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v0, v1

    .line 1503
    .end local v0    # "childTop":I
    .local v21, "childTop":I
    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v5, v21, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v22, v2

    .end local v2    # "layoutDirection":I
    .local v22, "layoutDirection":I
    move/from16 v2, v20

    move/from16 v23, v3

    .end local v3    # "gravity":I
    .local v23, "gravity":I
    move v3, v5

    move-object v5, v4

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v5, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    move/from16 v4, v16

    move/from16 v24, v7

    const/16 v19, 0x1

    move-object v7, v5

    .end local v5    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v7, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v24, "paddingLeft":I
    move/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1505
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v17, v0

    invoke-virtual {v6, v15}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v21, v21, v0

    .line 1507
    invoke-virtual {v6, v15, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    move/from16 v0, v21

    goto :goto_ea

    .line 1468
    .end local v16    # "childWidth":I
    .end local v17    # "childHeight":I
    .end local v18    # "absoluteGravity":I
    .end local v20    # "childLeft":I
    .end local v21    # "childTop":I
    .end local v22    # "layoutDirection":I
    .end local v23    # "gravity":I
    .end local v24    # "paddingLeft":I
    .restart local v0    # "childTop":I
    .local v7, "paddingLeft":I
    :cond_e6
    move/from16 v19, v5

    move/from16 v24, v7

    .line 1464
    .end local v7    # "paddingLeft":I
    .end local v15    # "child":Landroid/view/View;
    .restart local v24    # "paddingLeft":I
    :goto_ea
    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v24

    goto/16 :goto_4b

    .line 1510
    .end local v14    # "i":I
    .end local v24    # "paddingLeft":I
    .restart local v7    # "paddingLeft":I
    :cond_f0
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "childIndex"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "totalWidth"    # I
    .param p5, "heightMeasureSpec"    # I
    .param p6, "totalHeight"    # I

    .line 1381
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1383
    return-void
.end method

.method measureHorizontal(II)V
    .registers 49
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 932
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 935
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 936
    .local v2, "alternativeMaxHeight":I
    const/4 v3, 0x0

    .line 937
    .local v3, "weightedMaxHeight":I
    const/4 v4, 0x1

    .line 938
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 940
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 942
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 943
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 945
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 946
    .local v6, "matchHeight":Z
    const/4 v14, 0x0

    .line 948
    .local v14, "skippedMeasure":Z
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    if-eqz v15, :cond_25

    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v15, :cond_2e

    .line 949
    :cond_25
    const/4 v15, 0x4

    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 950
    new-array v10, v15, [I

    iput-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 953
    :cond_2e
    iget-object v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 954
    .local v10, "maxAscent":[I
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 956
    .local v15, "maxDescent":[I
    const/16 v17, 0x3

    move/from16 v18, v6

    .end local v6    # "matchHeight":Z
    .local v18, "matchHeight":Z
    const/4 v6, -0x1

    aput v6, v10, v17

    const/16 v19, 0x2

    aput v6, v10, v19

    const/16 v20, 0x1

    aput v6, v10, v20

    const/16 v16, 0x0

    aput v6, v10, v16

    .line 957
    aput v6, v15, v17

    aput v6, v15, v19

    aput v6, v15, v20

    aput v6, v15, v16

    .line 959
    iget-boolean v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 960
    .local v6, "baselineAligned":Z
    move/from16 v22, v14

    .end local v14    # "skippedMeasure":Z
    .local v22, "skippedMeasure":Z
    iget-boolean v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 962
    .local v14, "useLargestChild":Z
    const/high16 v9, 0x40000000    # 2.0f

    if-ne v12, v9, :cond_5a

    move/from16 v23, v20

    goto :goto_5c

    :cond_5a
    const/16 v23, 0x0

    .line 964
    .local v23, "isExactly":Z
    :goto_5c
    const/16 v24, 0x0

    .line 967
    .local v24, "largestChildWidth":I
    const/16 v25, 0x0

    move/from16 v26, v1

    move/from16 v1, v24

    move/from16 v24, v18

    move/from16 v18, v4

    move v4, v0

    move v0, v5

    move/from16 v5, v25

    move/from16 v45, v3

    move v3, v2

    move/from16 v2, v45

    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "maxHeight":I
    .local v5, "i":I
    .local v18, "allFillParent":Z
    .local v24, "matchHeight":Z
    .local v26, "childState":I
    :goto_71
    const/16 v29, 0x0

    if-ge v5, v11, :cond_25b

    .line 968
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 970
    .local v9, "child":Landroid/view/View;
    if-nez v9, :cond_91

    .line 971
    move/from16 v31, v1

    .end local v1    # "largestChildWidth":I
    .local v31, "largestChildWidth":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v27

    add-int v1, v1, v27

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 972
    move/from16 v21, v6

    move/from16 v6, v26

    move/from16 v1, v31

    move/from16 v31, v12

    goto/16 :goto_24d

    .line 975
    .end local v31    # "largestChildWidth":I
    .restart local v1    # "largestChildWidth":I
    :cond_91
    move/from16 v31, v1

    .end local v1    # "largestChildWidth":I
    .restart local v31    # "largestChildWidth":I
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v32, v2

    const/16 v2, 0x8

    .end local v2    # "weightedMaxHeight":I
    .local v32, "weightedMaxHeight":I
    if-ne v1, v2, :cond_ae

    .line 976
    invoke-virtual {v7, v9, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v5, v1

    .line 977
    move/from16 v21, v6

    move/from16 v6, v26

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v31, v12

    goto/16 :goto_24d

    .line 980
    :cond_ae
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 981
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 984
    :cond_bb
    nop

    .line 985
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 987
    .local v2, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v30, v0, v1

    .line 989
    .end local v0    # "totalWeight":F
    .local v30, "totalWeight":F
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v12, v0, :cond_122

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v0, :cond_122

    iget v0, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v29

    if-lez v0, :cond_122

    .line 993
    if-eqz v23, :cond_e4

    .line 994
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    move/from16 v33, v3

    .end local v3    # "alternativeMaxHeight":I
    .local v33, "alternativeMaxHeight":I
    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_f4

    .line 996
    .end local v33    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_e4
    move/from16 v33, v3

    .end local v3    # "alternativeMaxHeight":I
    .restart local v33    # "alternativeMaxHeight":I
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 997
    .local v0, "totalLength":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget v3, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1006
    .end local v0    # "totalLength":I
    :goto_f4
    if-eqz v6, :cond_10f

    .line 1007
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1008
    .local v1, "freeSpec":I
    invoke-virtual {v9, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1009
    .end local v1    # "freeSpec":I
    move-object v1, v2

    move/from16 v41, v4

    move v8, v5

    move/from16 v21, v6

    move/from16 v3, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v31, v12

    const/4 v12, -0x1

    goto/16 :goto_1a9

    .line 1010
    :cond_10f
    const/16 v22, 0x1

    move-object v1, v2

    move/from16 v41, v4

    move v8, v5

    move/from16 v21, v6

    move/from16 v3, v31

    move/from16 v38, v32

    move/from16 v39, v33

    move/from16 v31, v12

    const/4 v12, -0x1

    goto/16 :goto_1a9

    .line 989
    .end local v33    # "alternativeMaxHeight":I
    .restart local v3    # "alternativeMaxHeight":I
    :cond_122
    move/from16 v33, v3

    .line 1013
    .end local v3    # "alternativeMaxHeight":I
    .restart local v33    # "alternativeMaxHeight":I
    const/high16 v0, -0x80000000

    .line 1015
    .local v0, "oldWidth":I
    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v1, :cond_136

    iget v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v29

    if-lez v1, :cond_136

    .line 1020
    const/4 v0, 0x0

    .line 1021
    const/4 v1, -0x2

    iput v1, v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move v3, v0

    goto :goto_137

    .line 1028
    :cond_136
    move v3, v0

    .end local v0    # "oldWidth":I
    .local v3, "oldWidth":I
    :goto_137
    cmpl-float v0, v30, v29

    if-nez v0, :cond_140

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v34, v0

    goto :goto_142

    :cond_140
    const/16 v34, 0x0

    :goto_142
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v36, v31

    .end local v31    # "largestChildWidth":I
    .local v36, "largestChildWidth":I
    move-object v1, v9

    move-object/from16 v37, v2

    move/from16 v38, v32

    .end local v2    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v32    # "weightedMaxHeight":I
    .local v37, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v38, "weightedMaxHeight":I
    move v2, v5

    move/from16 v40, v3

    move/from16 v39, v33

    .end local v3    # "oldWidth":I
    .end local v33    # "alternativeMaxHeight":I
    .local v39, "alternativeMaxHeight":I
    .local v40, "oldWidth":I
    move/from16 v3, p1

    move/from16 v41, v4

    .end local v4    # "maxHeight":I
    .local v41, "maxHeight":I
    move/from16 v4, v34

    move v8, v5

    .end local v5    # "i":I
    .local v8, "i":I
    move/from16 v5, p2

    move/from16 v21, v6

    move/from16 v31, v12

    const/4 v12, -0x1

    .end local v6    # "baselineAligned":Z
    .end local v12    # "widthMode":I
    .local v21, "baselineAligned":Z
    .local v31, "widthMode":I
    move/from16 v6, v35

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1032
    move/from16 v0, v40

    const/high16 v1, -0x80000000

    .end local v40    # "oldWidth":I
    .restart local v0    # "oldWidth":I
    if-eq v0, v1, :cond_170

    .line 1033
    move-object/from16 v1, v37

    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iput v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    goto :goto_172

    .line 1032
    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :cond_170
    move-object/from16 v1, v37

    .line 1036
    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_172
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1037
    .local v2, "childWidth":I
    if-eqz v23, :cond_189

    .line 1038
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1039
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_19e

    .line 1041
    :cond_189
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1042
    .local v3, "totalLength":I
    add-int v4, v3, v2

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 1043
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    .line 1042
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1046
    .end local v3    # "totalLength":I
    :goto_19e
    if-eqz v14, :cond_1a7

    .line 1047
    move/from16 v3, v36

    .end local v36    # "largestChildWidth":I
    .local v3, "largestChildWidth":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1a9

    .line 1046
    .end local v3    # "largestChildWidth":I
    .restart local v36    # "largestChildWidth":I
    :cond_1a7
    move/from16 v3, v36

    .line 1051
    .end local v0    # "oldWidth":I
    .end local v2    # "childWidth":I
    .end local v36    # "largestChildWidth":I
    .restart local v3    # "largestChildWidth":I
    :goto_1a9
    const/4 v0, 0x0

    .line 1052
    .local v0, "matchHeightLocally":Z
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v13, v2, :cond_1b5

    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-ne v2, v12, :cond_1b5

    .line 1056
    const/16 v24, 0x1

    .line 1057
    const/4 v0, 0x1

    .line 1060
    :cond_1b5
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v4, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1061
    .local v2, "margin":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1062
    .local v4, "childHeight":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v26

    .end local v26    # "childState":I
    .local v6, "childState":I
    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 1064
    .end local v6    # "childState":I
    .local v5, "childState":I
    if-eqz v21, :cond_200

    .line 1065
    invoke-virtual {v9}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1066
    .local v6, "childBaseline":I
    if-eq v6, v12, :cond_1fb

    .line 1069
    iget v12, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v12, :cond_1d8

    iget v12, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_1da

    :cond_1d8
    iget v12, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_1da
    and-int/lit8 v12, v12, 0x70

    .line 1071
    .local v12, "gravity":I
    shr-int/lit8 v27, v12, 0x4

    const/16 v28, -0x2

    and-int/lit8 v27, v27, -0x2

    shr-int/lit8 v27, v27, 0x1

    .line 1074
    .local v27, "index":I
    move/from16 v28, v2

    .end local v2    # "margin":I
    .local v28, "margin":I
    aget v2, v10, v27

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v10, v27

    .line 1075
    aget v2, v15, v27

    move/from16 v32, v3

    .end local v3    # "largestChildWidth":I
    .local v32, "largestChildWidth":I
    sub-int v3, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v15, v27

    goto :goto_204

    .line 1066
    .end local v12    # "gravity":I
    .end local v27    # "index":I
    .end local v28    # "margin":I
    .end local v32    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_1fb
    move/from16 v28, v2

    move/from16 v32, v3

    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v28    # "margin":I
    .restart local v32    # "largestChildWidth":I
    goto :goto_204

    .line 1064
    .end local v6    # "childBaseline":I
    .end local v28    # "margin":I
    .end local v32    # "largestChildWidth":I
    .restart local v2    # "margin":I
    .restart local v3    # "largestChildWidth":I
    :cond_200
    move/from16 v28, v2

    move/from16 v32, v3

    .line 1079
    .end local v2    # "margin":I
    .end local v3    # "largestChildWidth":I
    .restart local v28    # "margin":I
    .restart local v32    # "largestChildWidth":I
    :goto_204
    move/from16 v2, v41

    .end local v41    # "maxHeight":I
    .local v2, "maxHeight":I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1081
    if-eqz v18, :cond_214

    iget v3, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_214

    move/from16 v3, v20

    goto :goto_215

    :cond_214
    const/4 v3, 0x0

    .line 1082
    .end local v18    # "allFillParent":Z
    .local v3, "allFillParent":Z
    :goto_215
    iget v6, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v6, v6, v29

    if-lez v6, :cond_22c

    .line 1087
    if-eqz v0, :cond_220

    move/from16 v6, v28

    goto :goto_221

    :cond_220
    move v6, v4

    :goto_221
    move/from16 v12, v38

    .end local v38    # "weightedMaxHeight":I
    .local v12, "weightedMaxHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v37, v1

    move/from16 v1, v39

    .end local v12    # "weightedMaxHeight":I
    .local v6, "weightedMaxHeight":I
    goto :goto_23d

    .line 1090
    .end local v6    # "weightedMaxHeight":I
    .restart local v38    # "weightedMaxHeight":I
    :cond_22c
    move/from16 v12, v38

    .end local v38    # "weightedMaxHeight":I
    .restart local v12    # "weightedMaxHeight":I
    if-eqz v0, :cond_233

    move/from16 v6, v28

    goto :goto_234

    :cond_233
    move v6, v4

    :goto_234
    move-object/from16 v37, v1

    move/from16 v1, v39

    .end local v39    # "alternativeMaxHeight":I
    .local v1, "alternativeMaxHeight":I
    .restart local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v6, v12

    .line 1094
    .end local v12    # "weightedMaxHeight":I
    .restart local v6    # "weightedMaxHeight":I
    :goto_23d
    invoke-virtual {v7, v9, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v12

    add-int/2addr v8, v12

    move v4, v2

    move/from16 v18, v3

    move v2, v6

    move/from16 v0, v30

    move v3, v1

    move v6, v5

    move v5, v8

    move/from16 v1, v32

    .line 967
    .end local v8    # "i":I
    .end local v9    # "child":Landroid/view/View;
    .end local v28    # "margin":I
    .end local v30    # "totalWeight":F
    .end local v32    # "largestChildWidth":I
    .end local v37    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v0, "totalWeight":F
    .local v1, "largestChildWidth":I
    .local v2, "weightedMaxHeight":I
    .local v3, "alternativeMaxHeight":I
    .local v4, "maxHeight":I
    .local v5, "i":I
    .local v6, "childState":I
    .restart local v18    # "allFillParent":Z
    :goto_24d
    add-int/lit8 v5, v5, 0x1

    move/from16 v8, p1

    move/from16 v26, v6

    move/from16 v6, v21

    move/from16 v12, v31

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_71

    .end local v21    # "baselineAligned":Z
    .end local v31    # "widthMode":I
    .local v6, "baselineAligned":Z
    .local v12, "widthMode":I
    .restart local v26    # "childState":I
    :cond_25b
    move v8, v5

    move/from16 v21, v6

    move/from16 v31, v12

    move/from16 v6, v26

    move v12, v2

    move v2, v4

    move/from16 v45, v3

    move v3, v1

    move/from16 v1, v45

    .line 1097
    .end local v4    # "maxHeight":I
    .end local v5    # "i":I
    .end local v26    # "childState":I
    .local v1, "alternativeMaxHeight":I
    .local v2, "maxHeight":I
    .local v3, "largestChildWidth":I
    .local v6, "childState":I
    .local v12, "weightedMaxHeight":I
    .restart local v21    # "baselineAligned":Z
    .restart local v31    # "widthMode":I
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v4, :cond_27a

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_27a

    .line 1098
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1103
    :cond_27a
    aget v4, v10, v20

    const/4 v5, -0x1

    if-ne v4, v5, :cond_290

    const/4 v4, 0x0

    aget v8, v10, v4

    if-ne v8, v5, :cond_290

    aget v4, v10, v19

    if-ne v4, v5, :cond_290

    aget v4, v10, v17

    if-eq v4, v5, :cond_28d

    goto :goto_290

    :cond_28d
    move/from16 v32, v6

    goto :goto_2c2

    .line 1107
    :cond_290
    :goto_290
    aget v4, v10, v17

    const/4 v5, 0x0

    aget v8, v10, v5

    aget v9, v10, v20

    aget v5, v10, v19

    .line 1109
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1108
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1107
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1110
    .local v4, "ascent":I
    aget v5, v15, v17

    const/4 v8, 0x0

    aget v9, v15, v8

    aget v8, v15, v20

    move/from16 v32, v6

    .end local v6    # "childState":I
    .local v32, "childState":I
    aget v6, v15, v19

    .line 1112
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1111
    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1110
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1113
    .local v5, "descent":I
    add-int v6, v4, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1116
    .end local v4    # "ascent":I
    .end local v5    # "descent":I
    :goto_2c2
    if-eqz v14, :cond_33e

    move/from16 v4, v31

    const/high16 v5, -0x80000000

    .end local v31    # "widthMode":I
    .local v4, "widthMode":I
    if-eq v4, v5, :cond_2d1

    if-nez v4, :cond_2cd

    goto :goto_2d1

    :cond_2cd
    move/from16 v27, v2

    goto/16 :goto_342

    .line 1118
    :cond_2d1
    :goto_2d1
    const/4 v5, 0x0

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1120
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d5
    if-ge v5, v11, :cond_339

    .line 1121
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1123
    .local v6, "child":Landroid/view/View;
    if-nez v6, :cond_2eb

    .line 1124
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1125
    move/from16 v27, v2

    move/from16 v31, v5

    goto :goto_334

    .line 1128
    :cond_2eb
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_2fd

    .line 1129
    invoke-virtual {v7, v6, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v8

    add-int/2addr v5, v8

    .line 1130
    move/from16 v27, v2

    move/from16 v31, v5

    goto :goto_334

    .line 1133
    :cond_2fd
    nop

    .line 1134
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1135
    .local v8, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    if-eqz v23, :cond_31b

    .line 1136
    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v27, v2

    .end local v2    # "maxHeight":I
    .local v27, "maxHeight":I
    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    move/from16 v31, v5

    .end local v5    # "i":I
    .local v31, "i":I
    iget v5, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    .line 1137
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v9, v2

    iput v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_334

    .line 1139
    .end local v27    # "maxHeight":I
    .end local v31    # "i":I
    .restart local v2    # "maxHeight":I
    .restart local v5    # "i":I
    :cond_31b
    move/from16 v27, v2

    move/from16 v31, v5

    .end local v2    # "maxHeight":I
    .end local v5    # "i":I
    .restart local v27    # "maxHeight":I
    .restart local v31    # "i":I
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1140
    .local v2, "totalLength":I
    add-int v5, v2, v3

    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v5, v9

    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v5, v9

    .line 1141
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v9

    add-int/2addr v5, v9

    .line 1140
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1120
    .end local v2    # "totalLength":I
    .end local v6    # "child":Landroid/view/View;
    .end local v8    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    :goto_334
    add-int/lit8 v5, v31, 0x1

    move/from16 v2, v27

    .end local v31    # "i":I
    .restart local v5    # "i":I
    goto :goto_2d5

    .end local v27    # "maxHeight":I
    .local v2, "maxHeight":I
    :cond_339
    move/from16 v27, v2

    move/from16 v31, v5

    .end local v2    # "maxHeight":I
    .end local v5    # "i":I
    .restart local v27    # "maxHeight":I
    .restart local v31    # "i":I
    goto :goto_342

    .line 1116
    .end local v4    # "widthMode":I
    .end local v27    # "maxHeight":I
    .restart local v2    # "maxHeight":I
    .local v31, "widthMode":I
    :cond_33e
    move/from16 v27, v2

    move/from16 v4, v31

    .line 1147
    .end local v2    # "maxHeight":I
    .end local v31    # "widthMode":I
    .restart local v4    # "widthMode":I
    .restart local v27    # "maxHeight":I
    :goto_342
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1149
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1152
    .local v2, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1155
    move/from16 v5, p1

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v8

    .line 1156
    .local v8, "widthSizeAndState":I
    const v6, 0xffffff

    and-int v2, v8, v6

    .line 1161
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v6, v2, v6

    .line 1162
    .local v6, "delta":I
    if-nez v22, :cond_417

    if-eqz v6, :cond_37d

    cmpl-float v31, v0, v29

    if-lez v31, :cond_37d

    move/from16 v33, v0

    move/from16 v34, v2

    move/from16 v36, v3

    move v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    goto/16 :goto_420

    .line 1273
    :cond_37d
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1277
    if-eqz v14, :cond_3fa

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v9, :cond_3f0

    .line 1278
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_388
    if-ge v9, v11, :cond_3e5

    .line 1279
    move/from16 v33, v0

    .end local v0    # "totalWeight":F
    .local v33, "totalWeight":F
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1281
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3d2

    move/from16 v16, v1

    .end local v1    # "alternativeMaxHeight":I
    .local v16, "alternativeMaxHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    move/from16 v34, v2

    const/16 v2, 0x8

    .end local v2    # "widthSize":I
    .local v34, "widthSize":I
    if-ne v1, v2, :cond_3a3

    .line 1282
    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_3da

    .line 1285
    :cond_3a3
    nop

    .line 1286
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1288
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1289
    .local v2, "childExtra":F
    cmpl-float v17, v2, v29

    if-lez v17, :cond_3c9

    .line 1290
    nop

    .line 1291
    move-object/from16 v17, v1

    move/from16 v19, v2

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v2    # "childExtra":F
    .local v17, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v19, "childExtra":F
    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1292
    move/from16 v36, v3

    .end local v3    # "largestChildWidth":I
    .restart local v36    # "largestChildWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1290
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    goto :goto_3da

    .line 1289
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v36    # "largestChildWidth":I
    .restart local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v2    # "childExtra":F
    .restart local v3    # "largestChildWidth":I
    :cond_3c9
    move-object/from16 v17, v1

    move/from16 v19, v2

    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v2    # "childExtra":F
    .end local v3    # "largestChildWidth":I
    .restart local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v19    # "childExtra":F
    .restart local v36    # "largestChildWidth":I
    goto :goto_3da

    .line 1281
    .end local v16    # "alternativeMaxHeight":I
    .end local v17    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v19    # "childExtra":F
    .end local v34    # "widthSize":I
    .end local v36    # "largestChildWidth":I
    .local v1, "alternativeMaxHeight":I
    .local v2, "widthSize":I
    .restart local v3    # "largestChildWidth":I
    :cond_3d2
    move/from16 v16, v1

    move/from16 v34, v2

    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    .line 1278
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "alternativeMaxHeight":I
    .end local v2    # "widthSize":I
    .end local v3    # "largestChildWidth":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v34    # "widthSize":I
    .restart local v36    # "largestChildWidth":I
    :goto_3da
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v16

    move/from16 v0, v33

    move/from16 v2, v34

    move/from16 v3, v36

    goto :goto_388

    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v34    # "widthSize":I
    .end local v36    # "largestChildWidth":I
    .local v0, "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v2    # "widthSize":I
    .restart local v3    # "largestChildWidth":I
    :cond_3e5
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v34, v2

    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v2    # "widthSize":I
    .end local v3    # "largestChildWidth":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v34    # "widthSize":I
    .restart local v36    # "largestChildWidth":I
    goto :goto_404

    .line 1277
    .end local v9    # "i":I
    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v34    # "widthSize":I
    .end local v36    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v2    # "widthSize":I
    .restart local v3    # "largestChildWidth":I
    :cond_3f0
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v34, v2

    move/from16 v36, v3

    move v1, v9

    goto :goto_404

    :cond_3fa
    move/from16 v33, v0

    move/from16 v16, v1

    move/from16 v34, v2

    move/from16 v36, v3

    const/high16 v1, 0x40000000    # 2.0f

    .line 1299
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v2    # "widthSize":I
    .end local v3    # "largestChildWidth":I
    .restart local v16    # "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v34    # "widthSize":I
    .restart local v36    # "largestChildWidth":I
    :goto_404
    move/from16 v40, v4

    move v4, v6

    move/from16 v25, v8

    move/from16 v38, v12

    move/from16 v3, v27

    move/from16 v2, v32

    move/from16 v6, p2

    move/from16 v32, v11

    move/from16 v27, v14

    goto/16 :goto_60b

    .line 1162
    .end local v16    # "alternativeMaxHeight":I
    .end local v33    # "totalWeight":F
    .end local v34    # "widthSize":I
    .end local v36    # "largestChildWidth":I
    .restart local v0    # "totalWeight":F
    .restart local v1    # "alternativeMaxHeight":I
    .restart local v2    # "widthSize":I
    .restart local v3    # "largestChildWidth":I
    :cond_417
    move/from16 v33, v0

    move/from16 v34, v2

    move/from16 v36, v3

    move v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    .line 1163
    .end local v0    # "totalWeight":F
    .end local v1    # "alternativeMaxHeight":I
    .end local v3    # "largestChildWidth":I
    .local v2, "alternativeMaxHeight":I
    .restart local v33    # "totalWeight":F
    .restart local v34    # "widthSize":I
    .restart local v36    # "largestChildWidth":I
    :goto_420
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v3, v0, v29

    if-lez v3, :cond_427

    goto :goto_429

    :cond_427
    move/from16 v0, v33

    .line 1165
    .local v0, "weightSum":F
    :goto_429
    const/4 v3, -0x1

    aput v3, v10, v17

    aput v3, v10, v19

    aput v3, v10, v20

    const/4 v9, 0x0

    aput v3, v10, v9

    .line 1166
    aput v3, v15, v17

    aput v3, v15, v19

    aput v3, v15, v20

    aput v3, v15, v9

    .line 1167
    const/4 v3, -0x1

    .line 1169
    .end local v27    # "maxHeight":I
    .local v3, "maxHeight":I
    iput v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1171
    const/4 v9, 0x0

    move v1, v2

    move/from16 v2, v32

    .end local v32    # "childState":I
    .restart local v1    # "alternativeMaxHeight":I
    .local v2, "childState":I
    .restart local v9    # "i":I
    :goto_442
    if-ge v9, v11, :cond_5ad

    .line 1172
    move/from16 v38, v12

    .end local v12    # "weightedMaxHeight":I
    .restart local v38    # "weightedMaxHeight":I
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1174
    .local v12, "child":Landroid/view/View;
    if-eqz v12, :cond_58f

    move/from16 v27, v14

    .end local v14    # "useLargestChild":Z
    .local v27, "useLargestChild":Z
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v5, 0x8

    if-ne v14, v5, :cond_463

    .line 1175
    move/from16 v40, v4

    move v4, v6

    move/from16 v25, v8

    move/from16 v32, v11

    const/16 v28, -0x2

    move/from16 v6, p2

    goto/16 :goto_59c

    .line 1178
    :cond_463
    nop

    .line 1179
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1181
    .local v14, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 1182
    .local v5, "childExtra":F
    cmpl-float v32, v5, v29

    if-lez v32, :cond_4d7

    .line 1184
    move/from16 v32, v11

    .end local v11    # "count":I
    .local v32, "count":I
    int-to-float v11, v6

    mul-float/2addr v11, v5

    div-float/2addr v11, v0

    float-to-int v11, v11

    .line 1185
    .local v11, "share":I
    sub-float/2addr v0, v5

    .line 1186
    sub-int/2addr v6, v11

    .line 1188
    nop

    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v35

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v37

    add-int v35, v35, v37

    move/from16 v37, v0

    .end local v0    # "weightSum":F
    .local v37, "weightSum":F
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v35, v35, v0

    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v0, v35, v0

    move/from16 v35, v5

    .end local v5    # "childExtra":F
    .local v35, "childExtra":F
    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 1188
    move/from16 v39, v6

    move/from16 v25, v8

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v6, p2

    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .local v25, "widthSizeAndState":I
    .local v39, "delta":I
    invoke-static {v6, v0, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v0

    .line 1195
    .local v0, "childHeightMeasureSpec":I
    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    if-nez v5, :cond_4b3

    if-eq v4, v8, :cond_4a4

    goto :goto_4b3

    .line 1208
    :cond_4a4
    if-lez v11, :cond_4a8

    move v5, v11

    goto :goto_4a9

    :cond_4a8
    const/4 v5, 0x0

    :goto_4a9
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v5, v0}, Landroid/view/View;->measure(II)V

    move/from16 v40, v4

    goto :goto_4c6

    .line 1198
    :cond_4b3
    :goto_4b3
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v11

    .line 1199
    .local v5, "childWidth":I
    if-gez v5, :cond_4bb

    .line 1200
    const/4 v5, 0x0

    .line 1203
    :cond_4bb
    nop

    .line 1204
    move/from16 v40, v4

    .end local v4    # "widthMode":I
    .local v40, "widthMode":I
    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1203
    invoke-virtual {v12, v4, v0}, Landroid/view/View;->measure(II)V

    .line 1206
    .end local v5    # "childWidth":I
    nop

    .line 1214
    :goto_4c6
    nop

    .line 1215
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    .line 1214
    invoke-static {v2, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move/from16 v0, v37

    move/from16 v4, v39

    goto :goto_4e4

    .line 1182
    .end local v25    # "widthSizeAndState":I
    .end local v32    # "count":I
    .end local v35    # "childExtra":F
    .end local v37    # "weightSum":F
    .end local v39    # "delta":I
    .end local v40    # "widthMode":I
    .local v0, "weightSum":F
    .restart local v4    # "widthMode":I
    .local v5, "childExtra":F
    .restart local v6    # "delta":I
    .restart local v8    # "widthSizeAndState":I
    .local v11, "count":I
    :cond_4d7
    move/from16 v40, v4

    move/from16 v35, v5

    move v4, v6

    move/from16 v25, v8

    move/from16 v32, v11

    const/high16 v8, 0x40000000    # 2.0f

    move/from16 v6, p2

    .line 1218
    .end local v5    # "childExtra":F
    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .local v4, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v32    # "count":I
    .restart local v35    # "childExtra":F
    .restart local v40    # "widthMode":I
    :goto_4e4
    if-eqz v23, :cond_4fb

    .line 1219
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget v8, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v11, v8

    iget v8, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v11, v8

    .line 1220
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v11, v8

    add-int/2addr v5, v11

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_513

    .line 1222
    :cond_4fb
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1223
    .local v5, "totalLength":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget v11, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int/2addr v8, v11

    iget v11, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v8, v11

    .line 1224
    invoke-virtual {v7, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int/2addr v8, v11

    .line 1223
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1227
    .end local v5    # "totalLength":I
    :goto_513
    const/high16 v5, 0x40000000    # 2.0f

    if-eq v13, v5, :cond_51f

    iget v5, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_51f

    move/from16 v5, v20

    goto :goto_520

    :cond_51f
    const/4 v5, 0x0

    .line 1230
    .local v5, "matchHeightLocally":Z
    :goto_520
    iget v8, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    iget v11, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v11

    .line 1231
    .local v8, "margin":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    .line 1232
    .local v11, "childHeight":I
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1233
    move/from16 v39, v0

    if-eqz v5, :cond_534

    move v0, v8

    goto :goto_535

    :cond_534
    move v0, v11

    .end local v0    # "weightSum":F
    .local v39, "weightSum":F
    :goto_535
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1236
    .end local v1    # "alternativeMaxHeight":I
    .local v0, "alternativeMaxHeight":I
    if-eqz v18, :cond_545

    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move/from16 v41, v0

    const/4 v0, -0x1

    .end local v0    # "alternativeMaxHeight":I
    .local v41, "alternativeMaxHeight":I
    if-ne v1, v0, :cond_547

    move/from16 v0, v20

    goto :goto_548

    .end local v41    # "alternativeMaxHeight":I
    .restart local v0    # "alternativeMaxHeight":I
    :cond_545
    move/from16 v41, v0

    .end local v0    # "alternativeMaxHeight":I
    .restart local v41    # "alternativeMaxHeight":I
    :cond_547
    const/4 v0, 0x0

    .line 1238
    .end local v18    # "allFillParent":Z
    .local v0, "allFillParent":Z
    :goto_548
    if-eqz v21, :cond_582

    .line 1239
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 1240
    .local v1, "childBaseline":I
    move/from16 v18, v0

    const/4 v0, -0x1

    .end local v0    # "allFillParent":Z
    .restart local v18    # "allFillParent":Z
    if-eq v1, v0, :cond_57d

    .line 1242
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v0, :cond_55a

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    goto :goto_55c

    :cond_55a
    iget v0, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    :goto_55c
    and-int/lit8 v0, v0, 0x70

    .line 1244
    .local v0, "gravity":I
    shr-int/lit8 v42, v0, 0x4

    const/16 v28, -0x2

    and-int/lit8 v42, v42, -0x2

    shr-int/lit8 v42, v42, 0x1

    .line 1247
    .local v42, "index":I
    move/from16 v43, v0

    .end local v0    # "gravity":I
    .local v43, "gravity":I
    aget v0, v10, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v42

    .line 1248
    aget v0, v15, v42

    move/from16 v44, v2

    .end local v2    # "childState":I
    .local v44, "childState":I
    sub-int v2, v11, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v15, v42

    goto :goto_588

    .line 1240
    .end local v42    # "index":I
    .end local v43    # "gravity":I
    .end local v44    # "childState":I
    .restart local v2    # "childState":I
    :cond_57d
    move/from16 v44, v2

    const/16 v28, -0x2

    .end local v2    # "childState":I
    .restart local v44    # "childState":I
    goto :goto_588

    .line 1238
    .end local v1    # "childBaseline":I
    .end local v18    # "allFillParent":Z
    .end local v44    # "childState":I
    .local v0, "allFillParent":Z
    .restart local v2    # "childState":I
    :cond_582
    move/from16 v18, v0

    move/from16 v44, v2

    const/16 v28, -0x2

    .line 1171
    .end local v0    # "allFillParent":Z
    .end local v2    # "childState":I
    .end local v5    # "matchHeightLocally":Z
    .end local v8    # "margin":I
    .end local v11    # "childHeight":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v35    # "childExtra":F
    .restart local v18    # "allFillParent":Z
    .restart local v44    # "childState":I
    :goto_588
    move/from16 v0, v39

    move/from16 v1, v41

    move/from16 v2, v44

    goto :goto_59c

    .line 1174
    .end local v25    # "widthSizeAndState":I
    .end local v27    # "useLargestChild":Z
    .end local v32    # "count":I
    .end local v39    # "weightSum":F
    .end local v40    # "widthMode":I
    .end local v41    # "alternativeMaxHeight":I
    .end local v44    # "childState":I
    .local v0, "weightSum":F
    .local v1, "alternativeMaxHeight":I
    .restart local v2    # "childState":I
    .local v4, "widthMode":I
    .restart local v6    # "delta":I
    .local v8, "widthSizeAndState":I
    .local v11, "count":I
    .restart local v12    # "child":Landroid/view/View;
    .local v14, "useLargestChild":Z
    :cond_58f
    move/from16 v40, v4

    move v4, v6

    move/from16 v25, v8

    move/from16 v32, v11

    move/from16 v27, v14

    const/16 v28, -0x2

    move/from16 v6, p2

    .line 1171
    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v11    # "count":I
    .end local v12    # "child":Landroid/view/View;
    .end local v14    # "useLargestChild":Z
    .local v4, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v27    # "useLargestChild":Z
    .restart local v32    # "count":I
    .restart local v40    # "widthMode":I
    :goto_59c
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, p1

    move v6, v4

    move/from16 v8, v25

    move/from16 v14, v27

    move/from16 v11, v32

    move/from16 v12, v38

    move/from16 v4, v40

    goto/16 :goto_442

    .end local v25    # "widthSizeAndState":I
    .end local v27    # "useLargestChild":Z
    .end local v32    # "count":I
    .end local v38    # "weightedMaxHeight":I
    .end local v40    # "widthMode":I
    .local v4, "widthMode":I
    .restart local v6    # "delta":I
    .restart local v8    # "widthSizeAndState":I
    .restart local v11    # "count":I
    .local v12, "weightedMaxHeight":I
    .restart local v14    # "useLargestChild":Z
    :cond_5ad
    move/from16 v40, v4

    move v4, v6

    move/from16 v25, v8

    move/from16 v32, v11

    move/from16 v38, v12

    move/from16 v27, v14

    move/from16 v6, p2

    .line 1255
    .end local v6    # "delta":I
    .end local v8    # "widthSizeAndState":I
    .end local v9    # "i":I
    .end local v11    # "count":I
    .end local v12    # "weightedMaxHeight":I
    .end local v14    # "useLargestChild":Z
    .local v4, "delta":I
    .restart local v25    # "widthSizeAndState":I
    .restart local v27    # "useLargestChild":Z
    .restart local v32    # "count":I
    .restart local v38    # "weightedMaxHeight":I
    .restart local v40    # "widthMode":I
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v5, v8

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1260
    aget v5, v10, v20

    const/4 v8, -0x1

    if-ne v5, v8, :cond_5da

    const/4 v5, 0x0

    aget v9, v10, v5

    if-ne v9, v8, :cond_5da

    aget v5, v10, v19

    if-ne v5, v8, :cond_5da

    aget v5, v10, v17

    if-eq v5, v8, :cond_609

    .line 1264
    :cond_5da
    aget v5, v10, v17

    const/4 v8, 0x0

    aget v9, v10, v8

    aget v11, v10, v20

    aget v12, v10, v19

    .line 1266
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1265
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1264
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1267
    .local v5, "ascent":I
    aget v9, v15, v17

    aget v8, v15, v8

    aget v11, v15, v20

    aget v12, v15, v19

    .line 1269
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1268
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1267
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1270
    .local v8, "descent":I
    add-int v9, v5, v8

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1272
    .end local v0    # "weightSum":F
    .end local v5    # "ascent":I
    .end local v8    # "descent":I
    :cond_609
    move/from16 v16, v1

    .line 1299
    .end local v1    # "alternativeMaxHeight":I
    .restart local v16    # "alternativeMaxHeight":I
    :goto_60b
    if-nez v18, :cond_613

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v13, v0, :cond_613

    .line 1300
    move/from16 v3, v16

    .line 1303
    :cond_613
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1308
    .end local v3    # "maxHeight":I
    .local v0, "maxHeight":I
    const/high16 v1, -0x1000000

    and-int/2addr v1, v2

    or-int v1, v25, v1

    shl-int/lit8 v3, v2, 0x10

    .line 1309
    invoke-static {v0, v6, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    .line 1308
    invoke-virtual {v7, v1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 1312
    if-eqz v24, :cond_63d

    .line 1313
    move/from16 v1, p1

    move/from16 v3, v32

    .end local v32    # "count":I
    .local v3, "count":I
    invoke-direct {v7, v3, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    goto :goto_641

    .line 1312
    .end local v3    # "count":I
    .restart local v32    # "count":I
    :cond_63d
    move/from16 v1, p1

    move/from16 v3, v32

    .line 1315
    .end local v32    # "count":I
    .restart local v3    # "count":I
    :goto_641
    return-void
.end method

.method measureNullChild(I)I
    .registers 3
    .param p1, "childIndex"    # I

    .line 1362
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 599
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 602
    .local v1, "childState":I
    const/4 v2, 0x0

    .line 603
    .local v2, "alternativeMaxWidth":I
    const/4 v3, 0x0

    .line 604
    .local v3, "weightedMaxWidth":I
    const/4 v4, 0x1

    .line 605
    .local v4, "allFillParent":Z
    const/4 v5, 0x0

    .line 607
    .local v5, "totalWeight":F
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 609
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 610
    .local v12, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 612
    .local v13, "heightMode":I
    const/4 v6, 0x0

    .line 613
    .local v6, "matchWidth":Z
    const/4 v14, 0x0

    .line 615
    .local v14, "skippedMeasure":Z
    iget v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 616
    .local v15, "baselineChildIndex":I
    iget-boolean v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 618
    .local v10, "useLargestChild":Z
    const/16 v17, 0x0

    .line 621
    .local v17, "largestChildHeight":I
    const/16 v18, 0x0

    move/from16 v19, v6

    move v6, v2

    move v2, v0

    move/from16 v37, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v14

    move/from16 v14, v18

    move/from16 v18, v37

    .end local v0    # "maxWidth":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v6, "alternativeMaxWidth":I
    .local v14, "i":I
    .local v17, "skippedMeasure":Z
    .local v18, "allFillParent":Z
    .local v19, "matchWidth":Z
    :goto_34
    move/from16 v20, v4

    .end local v4    # "weightedMaxWidth":I
    .local v20, "weightedMaxWidth":I
    const/16 v0, 0x8

    const/16 v22, 0x1

    const/16 v23, 0x0

    if-ge v14, v11, :cond_1b0

    .line 622
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 624
    .local v4, "child":Landroid/view/View;
    if-nez v4, :cond_56

    .line 625
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v21

    add-int v0, v0, v21

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 626
    move/from16 v21, v13

    move/from16 v4, v20

    move/from16 v20, v11

    goto/16 :goto_1a4

    .line 629
    :cond_56
    move/from16 v26, v1

    .end local v1    # "childState":I
    .local v26, "childState":I
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_6d

    .line 630
    invoke-virtual {v7, v4, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v14, v0

    .line 631
    move/from16 v21, v13

    move/from16 v4, v20

    move/from16 v1, v26

    move/from16 v20, v11

    goto/16 :goto_1a4

    .line 634
    :cond_6d
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 635
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 638
    :cond_7a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 640
    .local v1, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v27, v5, v0

    .line 642
    .end local v5    # "totalWeight":F
    .local v27, "totalWeight":F
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v13, v5, :cond_b6

    iget v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v0, :cond_b6

    iget v0, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-lez v0, :cond_b6

    .line 646
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 647
    .local v0, "totalLength":I
    iget v5, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v5, v0

    move/from16 v28, v2

    .end local v2    # "maxWidth":I
    .local v28, "maxWidth":I
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v2

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 648
    const/16 v17, 0x1

    .line 649
    .end local v0    # "totalLength":I
    move-object v8, v1

    move/from16 v33, v6

    move/from16 v21, v13

    move/from16 v24, v20

    move/from16 v9, v26

    move/from16 v31, v28

    move v13, v3

    move-object v3, v4

    move/from16 v20, v11

    goto/16 :goto_124

    .line 642
    .end local v28    # "maxWidth":I
    .restart local v2    # "maxWidth":I
    :cond_b6
    move/from16 v28, v2

    .line 650
    .end local v2    # "maxWidth":I
    .restart local v28    # "maxWidth":I
    const/high16 v0, -0x80000000

    .line 652
    .local v0, "oldHeight":I
    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v2, :cond_ca

    iget v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v2, v2, v23

    if-lez v2, :cond_ca

    .line 657
    const/4 v0, 0x0

    .line 658
    const/4 v2, -0x2

    iput v2, v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    move v5, v0

    goto :goto_cb

    .line 665
    :cond_ca
    move v5, v0

    .end local v0    # "oldHeight":I
    .local v5, "oldHeight":I
    :goto_cb
    const/16 v29, 0x0

    cmpl-float v0, v27, v23

    if-nez v0, :cond_d6

    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v30, v0

    goto :goto_d8

    :cond_d6
    const/16 v30, 0x0

    :goto_d8
    const/high16 v2, -0x80000000

    move-object/from16 v0, p0

    move-object v8, v1

    move/from16 v9, v26

    .end local v1    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v26    # "childState":I
    .local v8, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v9, "childState":I
    move-object v1, v4

    move/from16 v31, v28

    .end local v28    # "maxWidth":I
    .local v31, "maxWidth":I
    move v2, v14

    move/from16 v21, v13

    move v13, v3

    .end local v3    # "largestChildHeight":I
    .local v13, "largestChildHeight":I
    .local v21, "heightMode":I
    move/from16 v3, p1

    move-object/from16 v26, v4

    move/from16 v24, v20

    move/from16 v20, v11

    const/high16 v11, 0x40000000    # 2.0f

    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "count":I
    .local v20, "count":I
    .local v24, "weightedMaxWidth":I
    .local v26, "child":Landroid/view/View;
    move/from16 v4, v29

    move v11, v5

    .end local v5    # "oldHeight":I
    .local v11, "oldHeight":I
    move/from16 v5, p2

    move/from16 v33, v6

    .end local v6    # "alternativeMaxWidth":I
    .local v33, "alternativeMaxWidth":I
    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 669
    const/high16 v1, -0x80000000

    if-eq v11, v1, :cond_102

    .line 670
    iput v11, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    .line 673
    :cond_102
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 674
    .local v0, "childHeight":I
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 675
    .local v1, "totalLength":I
    add-int v2, v1, v0

    iget v3, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 676
    move-object/from16 v3, v26

    .end local v26    # "child":Landroid/view/View;
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 675
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 678
    if-eqz v10, :cond_124

    .line 679
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v13, v2

    .line 687
    .end local v0    # "childHeight":I
    .end local v1    # "totalLength":I
    .end local v11    # "oldHeight":I
    :cond_124
    :goto_124
    if-ltz v15, :cond_12e

    add-int/lit8 v0, v14, 0x1

    if-ne v15, v0, :cond_12e

    .line 688
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 694
    :cond_12e
    if-ge v14, v15, :cond_13f

    iget v0, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v23

    if-gtz v0, :cond_137

    goto :goto_13f

    .line 695
    :cond_137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_13f
    :goto_13f
    const/4 v0, 0x0

    .line 702
    .local v0, "matchWidthLocally":Z
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v12, v1, :cond_14c

    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14c

    .line 707
    const/16 v19, 0x1

    .line 708
    const/4 v0, 0x1

    .line 711
    :cond_14c
    iget v1, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v2, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 712
    .local v1, "margin":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, v1

    .line 713
    .local v2, "measuredWidth":I
    move/from16 v4, v31

    .end local v31    # "maxWidth":I
    .local v4, "maxWidth":I
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 714
    nop

    .line 715
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    .line 714
    invoke-static {v9, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    .line 717
    .end local v9    # "childState":I
    .local v5, "childState":I
    if-eqz v18, :cond_16f

    iget v6, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_16f

    move/from16 v6, v22

    goto :goto_170

    :cond_16f
    const/4 v6, 0x0

    .line 718
    .end local v18    # "allFillParent":Z
    .local v6, "allFillParent":Z
    :goto_170
    iget v9, v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v23

    if-lez v9, :cond_186

    .line 723
    if-eqz v0, :cond_17a

    move v9, v1

    goto :goto_17b

    :cond_17a
    move v9, v2

    :goto_17b
    move/from16 v11, v24

    .end local v24    # "weightedMaxWidth":I
    .local v11, "weightedMaxWidth":I
    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v24, v0

    move/from16 v0, v33

    .end local v11    # "weightedMaxWidth":I
    .local v9, "weightedMaxWidth":I
    goto :goto_196

    .line 726
    .end local v9    # "weightedMaxWidth":I
    .restart local v24    # "weightedMaxWidth":I
    :cond_186
    move/from16 v11, v24

    .end local v24    # "weightedMaxWidth":I
    .restart local v11    # "weightedMaxWidth":I
    if-eqz v0, :cond_18c

    move v9, v1

    goto :goto_18d

    :cond_18c
    move v9, v2

    :goto_18d
    move/from16 v24, v0

    move/from16 v0, v33

    .end local v33    # "alternativeMaxWidth":I
    .local v0, "alternativeMaxWidth":I
    .local v24, "matchWidthLocally":Z
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v11

    .line 730
    .end local v11    # "weightedMaxWidth":I
    .restart local v9    # "weightedMaxWidth":I
    :goto_196
    invoke-virtual {v7, v3, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v11

    add-int/2addr v14, v11

    move v2, v4

    move v1, v5

    move/from16 v18, v6

    move v4, v9

    move v3, v13

    move/from16 v5, v27

    move v6, v0

    .line 621
    .end local v0    # "alternativeMaxWidth":I
    .end local v8    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v9    # "weightedMaxWidth":I
    .end local v13    # "largestChildHeight":I
    .end local v24    # "matchWidthLocally":Z
    .end local v27    # "totalWeight":F
    .local v1, "childState":I
    .local v2, "maxWidth":I
    .local v3, "largestChildHeight":I
    .local v4, "weightedMaxWidth":I
    .local v5, "totalWeight":F
    .local v6, "alternativeMaxWidth":I
    .restart local v18    # "allFillParent":Z
    :goto_1a4
    add-int/lit8 v14, v14, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v11, v20

    move/from16 v13, v21

    goto/16 :goto_34

    .end local v4    # "weightedMaxWidth":I
    .end local v21    # "heightMode":I
    .local v11, "count":I
    .local v13, "heightMode":I
    .local v20, "weightedMaxWidth":I
    :cond_1b0
    move v9, v1

    move v4, v2

    move/from16 v21, v13

    const/high16 v1, -0x80000000

    move v2, v0

    move v13, v3

    move v0, v6

    move/from16 v37, v20

    move/from16 v20, v11

    move/from16 v11, v37

    .line 733
    .end local v1    # "childState":I
    .end local v2    # "maxWidth":I
    .end local v3    # "largestChildHeight":I
    .end local v6    # "alternativeMaxWidth":I
    .end local v14    # "i":I
    .restart local v0    # "alternativeMaxWidth":I
    .local v4, "maxWidth":I
    .local v9, "childState":I
    .local v11, "weightedMaxWidth":I
    .local v13, "largestChildHeight":I
    .local v20, "count":I
    .restart local v21    # "heightMode":I
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_1d3

    move/from16 v3, v20

    .end local v20    # "count":I
    .local v3, "count":I
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_1d5

    .line 734
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v6, v8

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1d5

    .line 733
    .end local v3    # "count":I
    .restart local v20    # "count":I
    :cond_1d3
    move/from16 v3, v20

    .line 737
    .end local v20    # "count":I
    .restart local v3    # "count":I
    :cond_1d5
    :goto_1d5
    if-eqz v10, :cond_22d

    move/from16 v6, v21

    .end local v21    # "heightMode":I
    .local v6, "heightMode":I
    if-eq v6, v1, :cond_1dd

    if-nez v6, :cond_22f

    .line 739
    :cond_1dd
    const/4 v1, 0x0

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 741
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e1
    if-ge v1, v3, :cond_22a

    .line 742
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 744
    .local v8, "child":Landroid/view/View;
    if-nez v8, :cond_1f6

    .line 745
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v20

    add-int v14, v14, v20

    iput v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 746
    move/from16 v24, v1

    goto :goto_223

    .line 749
    :cond_1f6
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-ne v14, v2, :cond_202

    .line 750
    invoke-virtual {v7, v8, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v14

    add-int/2addr v1, v14

    .line 751
    goto :goto_225

    .line 754
    :cond_202
    nop

    .line 755
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 757
    .local v14, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 758
    .local v2, "totalLength":I
    add-int v21, v2, v13

    move/from16 v24, v1

    .end local v1    # "i":I
    .local v24, "i":I
    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v21, v21, v1

    iget v1, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v21, v21, v1

    .line 759
    invoke-virtual {v7, v8}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v21, v1

    .line 758
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 741
    .end local v2    # "totalLength":I
    .end local v8    # "child":Landroid/view/View;
    .end local v14    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "i":I
    .restart local v1    # "i":I
    :goto_223
    move/from16 v1, v24

    :goto_225
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    goto :goto_1e1

    :cond_22a
    move/from16 v24, v1

    .end local v1    # "i":I
    .restart local v24    # "i":I
    goto :goto_22f

    .line 737
    .end local v6    # "heightMode":I
    .end local v24    # "i":I
    .restart local v21    # "heightMode":I
    :cond_22d
    move/from16 v6, v21

    .line 764
    .end local v21    # "heightMode":I
    .restart local v6    # "heightMode":I
    :cond_22f
    :goto_22f
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v8

    add-int/2addr v2, v8

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 766
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 769
    .local v1, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 772
    move/from16 v2, p2

    const/4 v8, 0x0

    invoke-static {v1, v2, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v14

    .line 773
    .local v14, "heightSizeAndState":I
    const v8, 0xffffff

    and-int v1, v14, v8

    .line 778
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int v8, v1, v8

    .line 779
    .local v8, "delta":I
    if-nez v17, :cond_2f9

    if-eqz v8, :cond_269

    cmpl-float v21, v5, v23

    if-lez v21, :cond_269

    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    goto/16 :goto_301

    .line 851
    :cond_269
    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 857
    if-eqz v10, :cond_2df

    move/from16 v16, v0

    const/high16 v0, 0x40000000    # 2.0f

    .end local v0    # "alternativeMaxWidth":I
    .local v16, "alternativeMaxWidth":I
    if-eq v6, v0, :cond_2d6

    .line 858
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_276
    if-ge v0, v3, :cond_2cd

    .line 859
    move/from16 v21, v1

    .end local v1    # "heightSize":I
    .local v21, "heightSize":I
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 861
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_2bc

    move/from16 v31, v4

    .end local v4    # "maxWidth":I
    .restart local v31    # "maxWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    move/from16 v24, v5

    const/16 v5, 0x8

    .end local v5    # "totalWeight":F
    .local v24, "totalWeight":F
    if-ne v4, v5, :cond_28f

    .line 862
    move/from16 v26, v8

    goto :goto_2c2

    .line 865
    :cond_28f
    nop

    .line 866
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 868
    .local v4, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v5, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 869
    .local v5, "childExtra":F
    cmpl-float v22, v5, v23

    if-lez v22, :cond_2b5

    .line 870
    nop

    .line 871
    move-object/from16 v22, v4

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .local v22, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move/from16 v25, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "childExtra":F
    .local v25, "childExtra":F
    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 873
    move/from16 v26, v8

    .end local v8    # "delta":I
    .local v26, "delta":I
    invoke-static {v13, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 870
    invoke-virtual {v1, v4, v8}, Landroid/view/View;->measure(II)V

    goto :goto_2c2

    .line 869
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v25    # "childExtra":F
    .end local v26    # "delta":I
    .restart local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v5    # "childExtra":F
    .restart local v8    # "delta":I
    :cond_2b5
    move-object/from16 v22, v4

    move/from16 v25, v5

    move/from16 v26, v8

    .end local v4    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v5    # "childExtra":F
    .end local v8    # "delta":I
    .restart local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .restart local v25    # "childExtra":F
    .restart local v26    # "delta":I
    goto :goto_2c2

    .line 861
    .end local v22    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v24    # "totalWeight":F
    .end local v25    # "childExtra":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .local v4, "maxWidth":I
    .local v5, "totalWeight":F
    .restart local v8    # "delta":I
    :cond_2bc
    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .line 858
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    :goto_2c2
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v21

    move/from16 v5, v24

    move/from16 v8, v26

    move/from16 v4, v31

    goto :goto_276

    .end local v21    # "heightSize":I
    .end local v24    # "totalWeight":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .local v1, "heightSize":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v8    # "delta":I
    :cond_2cd
    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .end local v1    # "heightSize":I
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v21    # "heightSize":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    goto :goto_2e9

    .line 857
    .end local v0    # "i":I
    .end local v21    # "heightSize":I
    .end local v24    # "totalWeight":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .restart local v1    # "heightSize":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v8    # "delta":I
    :cond_2d6
    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .end local v1    # "heightSize":I
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v21    # "heightSize":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    goto :goto_2e9

    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "heightSize":I
    .end local v24    # "totalWeight":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .local v0, "alternativeMaxWidth":I
    .restart local v1    # "heightSize":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v8    # "delta":I
    :cond_2df
    move/from16 v16, v0

    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .line 880
    .end local v0    # "alternativeMaxWidth":I
    .end local v1    # "heightSize":I
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v16    # "alternativeMaxWidth":I
    .restart local v21    # "heightSize":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    :goto_2e9
    move/from16 v34, v6

    move/from16 v27, v11

    move/from16 v29, v13

    move/from16 v30, v15

    move/from16 v4, v26

    move/from16 v13, p1

    move/from16 v26, v10

    goto/16 :goto_438

    .line 779
    .end local v16    # "alternativeMaxWidth":I
    .end local v21    # "heightSize":I
    .end local v24    # "totalWeight":F
    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .restart local v0    # "alternativeMaxWidth":I
    .restart local v1    # "heightSize":I
    .restart local v4    # "maxWidth":I
    .restart local v5    # "totalWeight":F
    .restart local v8    # "delta":I
    :cond_2f9
    move/from16 v21, v1

    move/from16 v31, v4

    move/from16 v24, v5

    move/from16 v26, v8

    .line 780
    .end local v1    # "heightSize":I
    .end local v4    # "maxWidth":I
    .end local v5    # "totalWeight":F
    .end local v8    # "delta":I
    .restart local v21    # "heightSize":I
    .restart local v24    # "totalWeight":F
    .restart local v26    # "delta":I
    .restart local v31    # "maxWidth":I
    :goto_301
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v1, v5, v23

    if-lez v1, :cond_308

    goto :goto_30a

    :cond_308
    move/from16 v5, v24

    :goto_30a
    move v1, v5

    .line 782
    .local v1, "weightSum":F
    const/4 v4, 0x0

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 784
    const/4 v5, 0x0

    move v8, v0

    move/from16 v4, v26

    move/from16 v0, v31

    .end local v26    # "delta":I
    .end local v31    # "maxWidth":I
    .local v0, "maxWidth":I
    .local v4, "delta":I
    .local v5, "i":I
    .local v8, "alternativeMaxWidth":I
    :goto_314
    if-ge v5, v3, :cond_41a

    .line 785
    move/from16 v26, v10

    .end local v10    # "useLargestChild":Z
    .local v26, "useLargestChild":Z
    invoke-virtual {v7, v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 787
    .local v10, "child":Landroid/view/View;
    move/from16 v27, v11

    .end local v11    # "weightedMaxWidth":I
    .local v27, "weightedMaxWidth":I
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    move/from16 v29, v13

    const/16 v13, 0x8

    .end local v13    # "largestChildHeight":I
    .local v29, "largestChildHeight":I
    if-ne v11, v13, :cond_330

    .line 788
    move/from16 v13, p1

    move/from16 v34, v6

    move/from16 v30, v15

    goto/16 :goto_40c

    .line 791
    :cond_330
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 793
    .local v11, "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    iget v13, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    .line 794
    .local v13, "childExtra":F
    cmpl-float v30, v13, v23

    if-lez v30, :cond_3a6

    .line 796
    move/from16 v30, v15

    .end local v15    # "baselineChildIndex":I
    .local v30, "baselineChildIndex":I
    int-to-float v15, v4

    mul-float/2addr v15, v13

    div-float/2addr v15, v1

    float-to-int v15, v15

    .line 797
    .local v15, "share":I
    sub-float/2addr v1, v13

    .line 798
    sub-int/2addr v4, v15

    .line 800
    nop

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v32, v1

    .end local v1    # "weightSum":F
    .local v32, "weightSum":F
    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    add-int v31, v31, v1

    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int v1, v31, v1

    move/from16 v31, v4

    .end local v4    # "delta":I
    .local v31, "delta":I
    iget v4, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    .line 800
    move/from16 v33, v13

    move/from16 v13, p1

    .end local v13    # "childExtra":F
    .local v33, "childExtra":F
    invoke-static {v13, v1, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I

    move-result v1

    .line 806
    .local v1, "childWidthMeasureSpec":I
    iget v4, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->height:I

    if-nez v4, :cond_383

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v6, v4, :cond_370

    move/from16 v34, v6

    goto :goto_385

    .line 819
    :cond_370
    if-lez v15, :cond_374

    move v4, v15

    goto :goto_375

    :cond_374
    const/4 v4, 0x0

    .line 820
    :goto_375
    move/from16 v34, v6

    const/high16 v6, 0x40000000    # 2.0f

    .end local v6    # "heightMode":I
    .local v34, "heightMode":I
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 819
    invoke-virtual {v10, v1, v4}, Landroid/view/View;->measure(II)V

    move/from16 v35, v15

    goto :goto_39a

    .line 806
    .end local v34    # "heightMode":I
    .restart local v6    # "heightMode":I
    :cond_383
    move/from16 v34, v6

    .line 809
    .end local v6    # "heightMode":I
    .restart local v34    # "heightMode":I
    :goto_385
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    .line 810
    .local v4, "childHeight":I
    if-gez v4, :cond_38d

    .line 811
    const/4 v4, 0x0

    .line 814
    :cond_38d
    nop

    .line 815
    move/from16 v35, v15

    const/high16 v6, 0x40000000    # 2.0f

    .end local v15    # "share":I
    .local v35, "share":I
    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 814
    invoke-virtual {v10, v1, v15}, Landroid/view/View;->measure(II)V

    .line 816
    .end local v4    # "childHeight":I
    nop

    .line 825
    :goto_39a
    nop

    .line 826
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    .line 825
    invoke-static {v9, v4}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    goto :goto_3b2

    .line 794
    .end local v30    # "baselineChildIndex":I
    .end local v31    # "delta":I
    .end local v32    # "weightSum":F
    .end local v33    # "childExtra":F
    .end local v34    # "heightMode":I
    .end local v35    # "share":I
    .local v1, "weightSum":F
    .local v4, "delta":I
    .restart local v6    # "heightMode":I
    .restart local v13    # "childExtra":F
    .local v15, "baselineChildIndex":I
    :cond_3a6
    move/from16 v34, v6

    move/from16 v33, v13

    move/from16 v30, v15

    move/from16 v13, p1

    .end local v6    # "heightMode":I
    .end local v13    # "childExtra":F
    .end local v15    # "baselineChildIndex":I
    .restart local v30    # "baselineChildIndex":I
    .restart local v33    # "childExtra":F
    .restart local v34    # "heightMode":I
    move/from16 v32, v1

    move/from16 v31, v4

    .line 830
    .end local v1    # "weightSum":F
    .end local v4    # "delta":I
    .restart local v31    # "delta":I
    .restart local v32    # "weightSum":F
    :goto_3b2
    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I

    iget v4, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I

    add-int/2addr v1, v4

    .line 831
    .local v1, "margin":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v1

    .line 832
    .local v4, "measuredWidth":I
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 834
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v12, v6, :cond_3cc

    iget v6, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    const/4 v15, -0x1

    if-ne v6, v15, :cond_3cc

    move/from16 v6, v22

    goto :goto_3cd

    :cond_3cc
    const/4 v6, 0x0

    .line 837
    .local v6, "matchWidthLocally":Z
    :goto_3cd
    if-eqz v6, :cond_3d1

    move v15, v1

    goto :goto_3d2

    :cond_3d1
    move v15, v4

    :goto_3d2
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 840
    if-eqz v18, :cond_3e2

    iget v15, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->width:I

    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "maxWidth":I
    .local v35, "maxWidth":I
    if-ne v15, v0, :cond_3e5

    move/from16 v15, v22

    goto :goto_3e6

    .end local v35    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    :cond_3e2
    move/from16 v35, v0

    const/4 v0, -0x1

    .end local v0    # "maxWidth":I
    .restart local v35    # "maxWidth":I
    :cond_3e5
    const/4 v15, 0x0

    .line 842
    .end local v18    # "allFillParent":Z
    .local v15, "allFillParent":Z
    :goto_3e6
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 843
    .local v0, "totalLength":I
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    add-int v18, v0, v18

    move/from16 v36, v1

    .end local v1    # "margin":I
    .local v36, "margin":I
    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->topMargin:I

    add-int v18, v18, v1

    iget v1, v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I

    add-int v18, v18, v1

    .line 844
    invoke-virtual {v7, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v1, v18, v1

    .line 843
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v18, v15

    move/from16 v4, v31

    move/from16 v1, v32

    move/from16 v0, v35

    .line 784
    .end local v6    # "matchWidthLocally":Z
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .end local v15    # "allFillParent":Z
    .end local v31    # "delta":I
    .end local v32    # "weightSum":F
    .end local v33    # "childExtra":F
    .end local v35    # "maxWidth":I
    .end local v36    # "margin":I
    .local v0, "maxWidth":I
    .local v1, "weightSum":F
    .local v4, "delta":I
    .restart local v18    # "allFillParent":Z
    :goto_40c
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v26

    move/from16 v11, v27

    move/from16 v13, v29

    move/from16 v15, v30

    move/from16 v6, v34

    goto/16 :goto_314

    .end local v26    # "useLargestChild":Z
    .end local v27    # "weightedMaxWidth":I
    .end local v29    # "largestChildHeight":I
    .end local v30    # "baselineChildIndex":I
    .end local v34    # "heightMode":I
    .local v6, "heightMode":I
    .local v10, "useLargestChild":Z
    .local v11, "weightedMaxWidth":I
    .local v13, "largestChildHeight":I
    .local v15, "baselineChildIndex":I
    :cond_41a
    move/from16 v31, v0

    move/from16 v34, v6

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v29, v13

    move/from16 v30, v15

    move/from16 v13, p1

    .line 848
    .end local v0    # "maxWidth":I
    .end local v5    # "i":I
    .end local v6    # "heightMode":I
    .end local v10    # "useLargestChild":Z
    .end local v11    # "weightedMaxWidth":I
    .end local v13    # "largestChildHeight":I
    .end local v15    # "baselineChildIndex":I
    .restart local v26    # "useLargestChild":Z
    .restart local v27    # "weightedMaxWidth":I
    .restart local v29    # "largestChildHeight":I
    .restart local v30    # "baselineChildIndex":I
    .local v31, "maxWidth":I
    .restart local v34    # "heightMode":I
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 850
    .end local v1    # "weightSum":F
    move/from16 v16, v8

    .line 880
    .end local v8    # "alternativeMaxWidth":I
    .restart local v16    # "alternativeMaxWidth":I
    :goto_438
    if-nez v18, :cond_440

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v12, v0, :cond_440

    .line 881
    move/from16 v31, v16

    .line 884
    :cond_440
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v0, v31, v0

    .line 887
    .end local v31    # "maxWidth":I
    .restart local v0    # "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 889
    invoke-static {v0, v13, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {v7, v1, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->setMeasuredDimension(II)V

    .line 892
    if-eqz v19, :cond_45f

    .line 893
    invoke-direct {v7, v3, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    .line 895
    :cond_45f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 288
    return-void

    .line 291
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 292
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 294
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    .line 296
    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1760
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1761
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1762
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1767
    const-string v0, "androidx.appcompat.widget.LinearLayoutCompat"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1768
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1410
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1411
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_c

    .line 1413
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    .line 1415
    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 554
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 555
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_c

    .line 557
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    .line 559
    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .param p1, "baselineAligned"    # Z

    .line 396
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 397
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .param p1, "i"    # I

    .line 492
    if-ltz p1, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_b

    .line 496
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 497
    return-void

    .line 493
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    .line 237
    return-void

    .line 239
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 240
    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 241
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 242
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    .line 244
    :cond_17
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 245
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    .line 247
    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->setWillNotDraw(Z)V

    .line 248
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 249
    return-void
.end method

.method public setDividerPadding(I)V
    .registers 2
    .param p1, "padding"    # I

    .line 261
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 262
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 1683
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    .line 1684
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    .line 1685
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1688
    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    .line 1689
    or-int/lit8 p1, p1, 0x30

    .line 1692
    :cond_14
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1693
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1695
    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .param p1, "horizontalGravity"    # I

    .line 1708
    const v0, 0x800007

    and-int v1, p1, v0

    .line 1709
    .local v1, "gravity":I
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/2addr v0, v2

    if-eq v0, v1, :cond_14

    .line 1710
    const v0, -0x800008

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1711
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1713
    :cond_14
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 422
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 423
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .param p1, "orientation"    # I

    .line 1658
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1659
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1660
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1662
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .param p1, "showDividers"    # I

    .line 199
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 200
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 202
    :cond_7
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 203
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 5
    .param p1, "verticalGravity"    # I

    .line 1716
    and-int/lit8 v0, p1, 0x70

    .line 1717
    .local v0, "gravity":I
    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    if-eq v2, v0, :cond_10

    .line 1718
    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1719
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestLayout()V

    .line 1721
    :cond_10
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .param p1, "weightSum"    # F

    .line 549
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 550
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .line 207
    const/4 v0, 0x0

    return v0
.end method
