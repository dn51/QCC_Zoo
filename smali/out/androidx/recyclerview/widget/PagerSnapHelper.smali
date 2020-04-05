.class public Landroidx/recyclerview/widget/PagerSnapHelper;
.super Landroidx/recyclerview/widget/SnapHelper;
.source "PagerSnapHelper.java"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field private mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/SnapHelper;-><init>()V

    return-void
.end method

.method private distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .registers 7
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 155
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    .line 156
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 158
    .local v0, "childCenter":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 159
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .local v1, "containerCenter":I
    goto :goto_23

    .line 161
    .end local v1    # "containerCenter":I
    :cond_1d
    invoke-virtual {p3}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 163
    .restart local v1    # "containerCenter":I
    :goto_23
    sub-int v2, v0, v1

    return v2
.end method

.method private findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .registers 11
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 178
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 179
    .local v0, "childCount":I
    if-nez v0, :cond_8

    .line 180
    const/4 v1, 0x0

    return-object v1

    .line 183
    :cond_8
    const/4 v1, 0x0

    .line 185
    .local v1, "closestChild":Landroid/view/View;
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 186
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .local v2, "center":I
    goto :goto_21

    .line 188
    .end local v2    # "center":I
    :cond_1b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 190
    .restart local v2    # "center":I
    :goto_21
    const v3, 0x7fffffff

    .line 192
    .local v3, "absClosest":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v0, :cond_43

    .line 193
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 194
    .local v5, "child":Landroid/view/View;
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 195
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 196
    .local v6, "childCenter":I
    sub-int v7, v6, v2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 199
    .local v7, "absDistance":I
    if-ge v7, v3, :cond_40

    .line 200
    move v3, v7

    .line 201
    move-object v1, v5

    .line 192
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCenter":I
    .end local v7    # "absDistance":I
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 204
    .end local v4    # "i":I
    :cond_43
    return-object v1
.end method

.method private findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;
    .registers 9
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "helper"    # Landroidx/recyclerview/widget/OrientationHelper;

    .line 219
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 220
    .local v0, "childCount":I
    if-nez v0, :cond_8

    .line 221
    const/4 v1, 0x0

    return-object v1

    .line 224
    :cond_8
    const/4 v1, 0x0

    .line 225
    .local v1, "closestChild":Landroid/view/View;
    const v2, 0x7fffffff

    .line 227
    .local v2, "startest":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v0, :cond_1e

    .line 228
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 229
    .local v4, "child":Landroid/view/View;
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 232
    .local v5, "childStart":I
    if-ge v5, v2, :cond_1b

    .line 233
    move v2, v5

    .line 234
    move-object v1, v4

    .line 227
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childStart":I
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 237
    .end local v3    # "i":I
    :cond_1e
    return-object v1
.end method

.method private getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 251
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_e

    .line 252
    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 254
    :cond_e
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mHorizontalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method

.method private getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;
    .registers 3
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 242
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroidx/recyclerview/widget/OrientationHelper;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eq v0, p1, :cond_e

    .line 243
    :cond_8
    invoke-static {p1}, Landroidx/recyclerview/widget/OrientationHelper;->createVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 245
    :cond_e
    iget-object v0, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mVerticalHelper:Landroidx/recyclerview/widget/OrientationHelper;

    return-object v0
.end method


# virtual methods
.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
    .registers 7
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "targetView"    # Landroid/view/View;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 53
    .local v0, "out":[I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 54
    nop

    .line 55
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 54
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_18

    .line 57
    :cond_16
    aput v2, v0, v2

    .line 60
    :goto_18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    .line 61
    nop

    .line 62
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    .line 61
    invoke-direct {p0, p1, p2, v1}, Landroidx/recyclerview/widget/PagerSnapHelper;->distanceToCenter(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I

    move-result v1

    aput v1, v0, v3

    goto :goto_2d

    .line 64
    :cond_2b
    aput v2, v0, v3

    .line 66
    :goto_2d
    return-object v0
.end method

.method protected createSnapScroller(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/LinearSmoothScroller;
    .registers 4
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 125
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_6

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_6
    new-instance v0, Landroidx/recyclerview/widget/PagerSnapHelper$1;

    iget-object v1, p0, Landroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/PagerSnapHelper$1;-><init>(Landroidx/recyclerview/widget/PagerSnapHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method public findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
    .registers 3
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 73
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 74
    :cond_f
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 75
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/PagerSnapHelper;->findCenterView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
    .registers 15
    .param p1, "layoutManager"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .line 83
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    .line 84
    .local v0, "itemCount":I
    const/4 v1, -0x1

    if-nez v0, :cond_8

    .line 85
    return v1

    .line 88
    :cond_8
    const/4 v2, 0x0

    .line 89
    .local v2, "mStartMostChildView":Landroid/view/View;
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 90
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getVerticalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    goto :goto_26

    .line 91
    :cond_18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 92
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/PagerSnapHelper;->getHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Landroidx/recyclerview/widget/PagerSnapHelper;->findStartView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroidx/recyclerview/widget/OrientationHelper;)Landroid/view/View;

    move-result-object v2

    .line 95
    :cond_26
    :goto_26
    if-nez v2, :cond_29

    .line 96
    return v1

    .line 98
    :cond_29
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 99
    .local v3, "centerPosition":I
    if-ne v3, v1, :cond_30

    .line 100
    return v1

    .line 104
    :cond_30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3e

    .line 105
    if-lez p2, :cond_3c

    move v1, v5

    goto :goto_3d

    :cond_3c
    move v1, v4

    .local v1, "forwardDirection":Z
    :goto_3d
    goto :goto_43

    .line 107
    .end local v1    # "forwardDirection":Z
    :cond_3e
    if-lez p3, :cond_42

    move v1, v5

    goto :goto_43

    :cond_42
    move v1, v4

    .line 109
    .restart local v1    # "forwardDirection":Z
    :goto_43
    const/4 v6, 0x0

    .line 110
    .local v6, "reverseLayout":Z
    instance-of v7, p1, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v7, :cond_62

    .line 111
    move-object v7, p1

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 113
    .local v7, "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    add-int/lit8 v8, v0, -0x1

    invoke-interface {v7, v8}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v8

    .line 114
    .local v8, "vectorForEnd":Landroid/graphics/PointF;
    if-eqz v8, :cond_62

    .line 115
    iget v9, v8, Landroid/graphics/PointF;->x:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_60

    iget v9, v8, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v10

    if-gez v9, :cond_61

    :cond_60
    move v4, v5

    :cond_61
    move v6, v4

    .line 118
    .end local v7    # "vectorProvider":Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
    .end local v8    # "vectorForEnd":Landroid/graphics/PointF;
    :cond_62
    if-eqz v6, :cond_69

    if-eqz v1, :cond_6e

    add-int/lit8 v4, v3, -0x1

    goto :goto_6f

    :cond_69
    if-eqz v1, :cond_6e

    add-int/lit8 v4, v3, 0x1

    goto :goto_6f

    :cond_6e
    move v4, v3

    :goto_6f
    return v4
.end method
