.class public Landroidx/recyclerview/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;,
        Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_SPAN_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "GridLayoutManager"


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I

    .line 84
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 85
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "spanCount"    # I
    .param p3, "orientation"    # I
    .param p4, "reverseLayout"    # Z

    .line 97
    invoke-direct {p0, p1, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 58
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Landroidx/recyclerview/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 73
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    .line 74
    .local v0, "properties":Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;
    iget v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 75
    return-void
.end method

.method private assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZ)V
    .registers 14
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "count"    # I
    .param p4, "consumedSpanCount"    # I
    .param p5, "layingOutInPrimaryDirection"    # Z

    .line 771
    if-eqz p5, :cond_6

    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "start":I
    move v1, p3

    .line 774
    .local v1, "end":I
    const/4 v2, 0x1

    .local v2, "diff":I
    goto :goto_a

    .line 776
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "diff":I
    :cond_6
    add-int/lit8 v0, p3, -0x1

    .line 777
    .restart local v0    # "start":I
    const/4 v1, -0x1

    .line 778
    .restart local v1    # "end":I
    const/4 v2, -0x1

    .line 780
    .restart local v2    # "diff":I
    :goto_a
    const/4 v3, 0x0

    .line 781
    .local v3, "span":I
    move v4, v0

    .local v4, "i":I
    :goto_c
    if-eq v4, v1, :cond_29

    .line 782
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v5, v5, v4

    .line 783
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 784
    .local v6, "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v7

    iput v7, v6, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 785
    iput v3, v6, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 786
    iget v7, v6, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v7

    .line 781
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    add-int/2addr v4, v2

    goto :goto_c

    .line 788
    .end local v4    # "i":I
    :cond_29
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .registers 7

    .line 190
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    .line 191
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_2a

    .line 192
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 193
    .local v2, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 194
    .local v3, "viewPosition":I
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    iget-object v4, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    .end local v2    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v3    # "viewPosition":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 197
    .end local v1    # "i":I
    :cond_2a
    return-void
.end method

.method private calculateItemBorders(I)V
    .registers 4
    .param p1, "totalSpace"    # I

    .line 310
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    .line 311
    return-void
.end method

.method static calculateItemBorders([III)[I
    .registers 10
    .param p0, "cachedBorders"    # [I
    .param p1, "spanCount"    # I
    .param p2, "totalSpace"    # I

    .line 321
    if-eqz p0, :cond_e

    array-length v0, p0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_e

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-eq v0, p2, :cond_12

    .line 323
    :cond_e
    add-int/lit8 v0, p1, 0x1

    new-array p0, v0, [I

    .line 325
    :cond_12
    const/4 v0, 0x0

    aput v0, p0, v0

    .line 326
    div-int v0, p2, p1

    .line 327
    .local v0, "sizePerSpan":I
    rem-int v1, p2, p1

    .line 328
    .local v1, "sizePerSpanRemainder":I
    const/4 v2, 0x0

    .line 329
    .local v2, "consumedPixels":I
    const/4 v3, 0x0

    .line 330
    .local v3, "additionalSize":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1c
    if-gt v4, p1, :cond_2f

    .line 331
    move v5, v0

    .line 332
    .local v5, "itemSize":I
    add-int/2addr v3, v1

    .line 333
    if-lez v3, :cond_29

    sub-int v6, p1, v3

    if-ge v6, v1, :cond_29

    .line 334
    add-int/lit8 v5, v5, 0x1

    .line 335
    sub-int/2addr v3, p1

    .line 337
    :cond_29
    add-int/2addr v2, v5

    .line 338
    aput v2, p0, v4

    .line 330
    .end local v5    # "itemSize":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 340
    .end local v4    # "i":I
    :cond_2f
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .registers 2

    .line 185
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 186
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 187
    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 11
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .line 387
    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 389
    .local v1, "layingOutInPrimaryDirection":Z
    :goto_6
    iget v2, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    .line 390
    .local v2, "span":I
    if-eqz v1, :cond_20

    .line 392
    :goto_e
    if-lez v2, :cond_38

    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez v3, :cond_38

    .line 393
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    sub-int/2addr v3, v0

    iput v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 394
    iget v3, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    goto :goto_e

    .line 398
    :cond_20
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v0

    .line 399
    .local v3, "indexLimit":I
    iget v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 400
    .local v0, "pos":I
    move v4, v2

    .line 401
    .local v4, "bestSpan":I
    :goto_28
    if-ge v0, v3, :cond_36

    .line 402
    add-int/lit8 v5, v0, 0x1

    invoke-direct {p0, p1, p2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v5

    .line 403
    .local v5, "next":I
    if-le v5, v4, :cond_36

    .line 404
    add-int/lit8 v0, v0, 0x1

    .line 405
    move v4, v5

    .line 409
    .end local v5    # "next":I
    goto :goto_28

    .line 410
    :cond_36
    iput v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 412
    .end local v0    # "pos":I
    .end local v3    # "indexLimit":I
    .end local v4    # "bestSpan":I
    :cond_38
    return-void
.end method

.method private ensureViewSet()V
    .registers 3

    .line 364
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_9

    array-length v0, v0

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_f

    .line 365
    :cond_9
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    .line 367
    :cond_f
    return-void
.end method

.method private getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 7
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "viewPosition"    # I

    .line 451
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 452
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    return v0

    .line 454
    :cond_f
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v0

    .line 455
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GridLayoutManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v1, 0x0

    return v1

    .line 463
    :cond_2e
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 8
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .line 467
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 468
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v0, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    return v0

    .line 470
    :cond_f
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 471
    .local v0, "cached":I
    if-eq v0, v1, :cond_19

    .line 472
    return v0

    .line 474
    :cond_19
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 475
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_37

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v1, 0x0

    return v1

    .line 484
    :cond_37
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v1

    return v1
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I
    .registers 8
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "pos"    # I

    .line 488
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_d

    .line 489
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    return v0

    .line 491
    :cond_d
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 492
    .local v0, "cached":I
    if-eq v0, v1, :cond_17

    .line 493
    return v0

    .line 495
    :cond_17
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result v2

    .line 496
    .local v2, "adapterPosition":I
    if-ne v2, v1, :cond_35

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GridLayoutManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v1, 0x1

    return v1

    .line 505
    :cond_35
    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    return v1
.end method

.method private guessMeasurement(FI)V
    .registers 5
    .param p1, "maxSizeInOther"    # F
    .param p2, "currentOtherDirSize"    # I

    .line 746
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 748
    .local v0, "contentSize":I
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 749
    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .registers 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "otherDirParentSpecMode"    # I
    .param p3, "alreadyMeasured"    # Z

    .line 712
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 713
    .local v0, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    iget-object v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 714
    .local v1, "decorInsets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 716
    .local v2, "verticalInsets":I
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    .line 718
    .local v3, "horizontalInsets":I
    iget v4, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v5, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    .line 721
    .local v4, "availableSpaceInOther":I
    iget v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_43

    .line 722
    iget v5, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v4, p2, v3, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 724
    .local v5, "wSpec":I
    iget-object v6, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v6

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeightMode()I

    move-result v8

    iget v9, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v6, v8, v2, v9, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .local v6, "hSpec":I
    goto :goto_59

    .line 727
    .end local v5    # "wSpec":I
    .end local v6    # "hSpec":I
    :cond_43
    iget v5, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v4, p2, v2, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v6

    .line 729
    .restart local v6    # "hSpec":I
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidthMode()I

    move-result v8

    iget v9, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v5, v8, v3, v9, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v5

    .line 732
    .restart local v5    # "wSpec":I
    :goto_59
    invoke-direct {p0, p1, v5, v6, p3}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    .line 733
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "widthSpec"    # I
    .param p3, "heightSpec"    # I
    .param p4, "alreadyMeasured"    # Z

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 755
    .local v0, "lp":Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    if-eqz p4, :cond_d

    .line 756
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldReMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .local v1, "measure":Z
    goto :goto_11

    .line 758
    .end local v1    # "measure":Z
    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->shouldMeasureChild(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v1

    .line 760
    .restart local v1    # "measure":Z
    :goto_11
    if-eqz v1, :cond_16

    .line 761
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 763
    :cond_16
    return-void
.end method

.method private updateMeasurements()V
    .registers 3

    .line 276
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 277
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .local v0, "totalSpace":I
    goto :goto_24

    .line 279
    .end local v0    # "totalSpace":I
    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 281
    .restart local v0    # "totalSpace":I
    :goto_24
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemBorders(I)V

    .line 282
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .registers 3
    .param p1, "lp"    # Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 252
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method collectPrefetchPositionsForLayoutState(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 10
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p2, "layoutState"    # Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .param p3, "layoutPrefetchRegistry"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;

    .line 511
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 512
    .local v0, "remainingSpan":I
    const/4 v1, 0x0

    .line 513
    .local v1, "count":I
    :goto_3
    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_2d

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_2d

    if-lez v0, :cond_2d

    .line 514
    iget v2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 515
    .local v2, "pos":I
    const/4 v3, 0x0

    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p3, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 516
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 517
    .local v3, "spanSize":I
    sub-int/2addr v0, v3

    .line 518
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 519
    nop

    .end local v2    # "pos":I
    .end local v3    # "spanSize":I
    add-int/lit8 v1, v1, 0x1

    .line 520
    goto :goto_3

    .line 521
    :cond_2d
    return-void
.end method

.method findReferenceChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 16
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "itemCount"    # I

    .line 417
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureLayoutState()V

    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "invalidMatch":Landroid/view/View;
    const/4 v1, 0x0

    .line 420
    .local v1, "outOfBoundsMatch":Landroid/view/View;
    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    .line 421
    .local v2, "boundsStart":I
    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 422
    .local v3, "boundsEnd":I
    if-le p4, p3, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    const/4 v4, -0x1

    .line 424
    .local v4, "diff":I
    :goto_16
    move v5, p3

    .local v5, "i":I
    :goto_17
    if-eq v5, p4, :cond_53

    .line 425
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 426
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 427
    .local v7, "position":I
    if-ltz v7, :cond_51

    if-ge v7, p5, :cond_51

    .line 428
    invoke-direct {p0, p1, p2, v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v8

    .line 429
    .local v8, "span":I
    if-eqz v8, :cond_2c

    .line 430
    goto :goto_51

    .line 432
    :cond_2c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v9

    if-eqz v9, :cond_3c

    .line 433
    if-nez v0, :cond_51

    .line 434
    move-object v0, v6

    goto :goto_51

    .line 436
    :cond_3c
    iget-object v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v9

    if-ge v9, v3, :cond_4e

    iget-object v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 437
    invoke-virtual {v9, v6}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v9

    if-ge v9, v2, :cond_4d

    goto :goto_4e

    .line 442
    :cond_4d
    return-object v6

    .line 438
    :cond_4e
    :goto_4e
    if-nez v1, :cond_51

    .line 439
    move-object v1, v6

    .line 424
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "position":I
    .end local v8    # "span":I
    :cond_51
    :goto_51
    add-int/2addr v5, v4

    goto :goto_17

    .line 446
    .end local v5    # "i":I
    :cond_53
    if-eqz v1, :cond_57

    move-object v5, v1

    goto :goto_58

    :cond_57
    move-object v5, v0

    :goto_58
    return-object v5
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4

    .line 227
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-nez v0, :cond_c

    .line 228
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0

    .line 231
    :cond_c
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 238
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 243
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_d

    .line 244
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 246
    :cond_d
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 132
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 133
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 135
    :cond_8
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_10

    .line 136
    const/4 v0, 0x0

    return v0

    .line 140
    :cond_10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 118
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 119
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return v0

    .line 121
    :cond_7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    .line 122
    const/4 v0, 0x0

    return v0

    .line 126
    :cond_10
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method getSpaceForSpanRange(II)I
    .registers 6
    .param p1, "startSpan"    # I
    .param p2, "spanSize"    # I

    .line 344
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 345
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    sub-int v2, v1, p1

    aget v2, v0, v2

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    aget v0, v0, v1

    sub-int/2addr v2, v0

    return v2

    .line 348
    :cond_19
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    add-int v1, p1, p2

    aget v1, v0, v1

    aget v0, v0, p1

    sub-int/2addr v1, v0

    return v1
.end method

.method public getSpanCount()I
    .registers 2

    .line 797
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    return v0
.end method

.method public getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
    .registers 2

    .line 271
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    return-object v0
.end method

.method layoutChunk(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 30
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "layoutState"    # Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
    .param p4, "result"    # Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;

    .line 526
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/OrientationHelper;->getModeInOther()I

    move-result v11

    .line 527
    .local v11, "otherDirSpecMode":I
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v11, v12, :cond_18

    move v0, v14

    goto :goto_19

    :cond_18
    move v0, v13

    :goto_19
    move v15, v0

    .line 528
    .local v15, "flexibleInOtherDir":Z
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_27

    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    aget v0, v0, v1

    goto :goto_28

    :cond_27
    move v0, v13

    :goto_28
    move v5, v0

    .line 532
    .local v5, "currentOtherDirSize":I
    if-eqz v15, :cond_2e

    .line 533
    invoke-direct/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 535
    :cond_2e
    iget v0, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v0, v14, :cond_34

    move v0, v14

    goto :goto_35

    :cond_34
    move v0, v13

    :goto_35
    move/from16 v16, v0

    .line 537
    .local v16, "layingOutInPrimaryDirection":Z
    const/4 v0, 0x0

    .line 538
    .local v0, "count":I
    const/4 v1, 0x0

    .line 539
    .local v1, "consumedSpanCount":I
    iget v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 540
    .local v2, "remainingSpan":I
    if-nez v16, :cond_4f

    .line 541
    iget v3, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v3

    .line 542
    .local v3, "itemSpanIndex":I
    iget v4, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v7, v8, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v4

    .line 543
    .local v4, "itemSpanSize":I
    add-int v2, v3, v4

    move v4, v0

    move/from16 v17, v1

    goto :goto_52

    .line 540
    .end local v3    # "itemSpanIndex":I
    .end local v4    # "itemSpanSize":I
    :cond_4f
    move v4, v0

    move/from16 v17, v1

    .line 545
    .end local v0    # "count":I
    .end local v1    # "consumedSpanCount":I
    .local v4, "count":I
    .local v17, "consumedSpanCount":I
    :goto_52
    iget v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ge v4, v0, :cond_ad

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->hasMore(Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_ad

    if-lez v2, :cond_ad

    .line 546
    iget v0, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 547
    .local v0, "pos":I
    invoke-direct {v6, v7, v8, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v1

    .line 548
    .local v1, "spanSize":I
    iget v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-gt v1, v3, :cond_7f

    .line 553
    sub-int/2addr v2, v1

    .line 554
    if-gez v2, :cond_6c

    .line 555
    goto :goto_ad

    .line 557
    :cond_6c
    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->next(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    .line 558
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_73

    .line 559
    goto :goto_ad

    .line 561
    :cond_73
    add-int v17, v17, v1

    .line 562
    iget-object v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v12, v4

    .line 563
    nop

    .end local v0    # "pos":I
    .end local v1    # "spanSize":I
    .end local v3    # "view":Landroid/view/View;
    add-int/lit8 v4, v4, 0x1

    .line 564
    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_52

    .line 549
    .restart local v0    # "pos":I
    .restart local v1    # "spanSize":I
    :cond_7f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Item at position "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " requires "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " spans but GridLayoutManager has only "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " spans."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 566
    .end local v0    # "pos":I
    .end local v1    # "spanSize":I
    :cond_ad
    :goto_ad
    move v12, v2

    .end local v2    # "remainingSpan":I
    .local v12, "remainingSpan":I
    if-nez v4, :cond_b3

    .line 567
    iput-boolean v14, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    .line 568
    return-void

    .line 571
    :cond_b3
    const/16 v19, 0x0

    .line 572
    .local v19, "maxSize":I
    const/16 v20, 0x0

    .line 575
    .local v20, "maxSizeInOther":F
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move v14, v4

    .end local v4    # "count":I
    .local v14, "count":I
    move/from16 v4, v17

    move/from16 v21, v5

    .end local v5    # "currentOtherDirSize":I
    .local v21, "currentOtherDirSize":I
    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/recyclerview/widget/GridLayoutManager;->assignSpans(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;IIZ)V

    .line 576
    const/4 v0, 0x0

    move/from16 v1, v19

    move/from16 v5, v20

    .end local v19    # "maxSize":I
    .end local v20    # "maxSizeInOther":F
    .local v0, "i":I
    .local v1, "maxSize":I
    .local v5, "maxSizeInOther":F
    :goto_cd
    if-ge v0, v14, :cond_11e

    .line 577
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 578
    .local v2, "view":Landroid/view/View;
    iget-object v3, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_e1

    .line 579
    if-eqz v16, :cond_dd

    .line 580
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_ea

    .line 582
    :cond_dd
    invoke-virtual {v6, v2, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_ea

    .line 585
    :cond_e1
    if-eqz v16, :cond_e7

    .line 586
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_ea

    .line 588
    :cond_e7
    invoke-virtual {v6, v2, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 591
    :goto_ea
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 593
    invoke-direct {v6, v2, v11, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 594
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 595
    .local v3, "size":I
    if-le v3, v1, :cond_fb

    .line 596
    move v1, v3

    .line 598
    :cond_fb
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 599
    .local v4, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    const/high16 v19, 0x3f800000    # 1.0f

    iget-object v13, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v13, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v19

    move/from16 v19, v1

    .end local v1    # "maxSize":I
    .restart local v19    # "maxSize":I
    iget v1, v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v1, v1

    div-float/2addr v13, v1

    .line 601
    .local v13, "otherSize":F
    cmpl-float v1, v13, v5

    if-lez v1, :cond_118

    .line 602
    move v1, v13

    move v5, v1

    .line 576
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "size":I
    .end local v4    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v13    # "otherSize":F
    :cond_118
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v19

    const/4 v13, 0x0

    goto :goto_cd

    .line 605
    .end local v0    # "i":I
    .end local v19    # "maxSize":I
    .restart local v1    # "maxSize":I
    :cond_11e
    if-eqz v15, :cond_141

    .line 607
    move/from16 v13, v21

    .end local v21    # "currentOtherDirSize":I
    .local v13, "currentOtherDirSize":I
    invoke-direct {v6, v5, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->guessMeasurement(FI)V

    .line 609
    const/4 v0, 0x0

    .line 610
    .end local v1    # "maxSize":I
    .local v0, "maxSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_127
    if-ge v1, v14, :cond_13f

    .line 611
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v1

    .line 612
    .restart local v2    # "view":Landroid/view/View;
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    invoke-direct {v6, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 613
    iget-object v3, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    .line 614
    .restart local v3    # "size":I
    if-le v3, v0, :cond_13c

    .line 615
    move v0, v3

    .line 610
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "size":I
    :cond_13c
    add-int/lit8 v1, v1, 0x1

    goto :goto_127

    :cond_13f
    move v4, v0

    goto :goto_144

    .line 605
    .end local v0    # "maxSize":I
    .end local v13    # "currentOtherDirSize":I
    .local v1, "maxSize":I
    .restart local v21    # "currentOtherDirSize":I
    :cond_141
    move/from16 v13, v21

    .end local v21    # "currentOtherDirSize":I
    .restart local v13    # "currentOtherDirSize":I
    move v4, v1

    .line 622
    .end local v1    # "maxSize":I
    .local v4, "maxSize":I
    :goto_144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_145
    if-ge v0, v14, :cond_1c7

    .line 623
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 624
    .local v1, "view":Landroid/view/View;
    iget-object v2, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-eq v2, v4, :cond_1b1

    .line 625
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 626
    .local v2, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    iget-object v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 627
    .local v3, "decorInsets":Landroid/graphics/Rect;
    move/from16 v19, v5

    .end local v5    # "maxSizeInOther":F
    .local v19, "maxSizeInOther":F
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    iget v7, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v7

    iget v7, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v7

    .line 629
    .local v5, "verticalInsets":I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v7, v8

    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v7, v8

    .line 631
    .local v7, "horizontalInsets":I
    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v21, v3

    .end local v3    # "decorInsets":Landroid/graphics/Rect;
    .local v21, "decorInsets":Landroid/graphics/Rect;
    iget v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v6, v8, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v3

    .line 634
    .local v3, "totalSpaceInOther":I
    iget v8, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    move/from16 v22, v11

    const/4 v11, 0x1

    .end local v11    # "otherDirSpecMode":I
    .local v22, "otherDirSpecMode":I
    if-ne v8, v11, :cond_199

    .line 635
    iget v8, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->width:I

    move/from16 v18, v12

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .end local v12    # "remainingSpan":I
    .local v18, "remainingSpan":I
    invoke-static {v3, v11, v7, v8, v12}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v8

    .line 637
    .local v8, "wSpec":I
    sub-int v12, v4, v5

    invoke-static {v12, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    move-object/from16 v23, v2

    const/4 v2, 0x0

    .local v12, "hSpec":I
    goto :goto_1ac

    .line 640
    .end local v8    # "wSpec":I
    .end local v18    # "remainingSpan":I
    .local v12, "remainingSpan":I
    :cond_199
    move/from16 v18, v12

    const/high16 v11, 0x40000000    # 2.0f

    .end local v12    # "remainingSpan":I
    .restart local v18    # "remainingSpan":I
    sub-int v8, v4, v7

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 642
    .restart local v8    # "wSpec":I
    iget v12, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->height:I

    move-object/from16 v23, v2

    const/4 v2, 0x0

    .end local v2    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .local v23, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    invoke-static {v3, v11, v5, v12, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v12

    .line 645
    .local v12, "hSpec":I
    :goto_1ac
    const/4 v2, 0x1

    invoke-direct {v6, v1, v8, v12, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_1b9

    .line 624
    .end local v3    # "totalSpaceInOther":I
    .end local v7    # "horizontalInsets":I
    .end local v8    # "wSpec":I
    .end local v18    # "remainingSpan":I
    .end local v19    # "maxSizeInOther":F
    .end local v21    # "decorInsets":Landroid/graphics/Rect;
    .end local v22    # "otherDirSpecMode":I
    .end local v23    # "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .local v5, "maxSizeInOther":F
    .restart local v11    # "otherDirSpecMode":I
    .local v12, "remainingSpan":I
    :cond_1b1
    move/from16 v19, v5

    move/from16 v22, v11

    move/from16 v18, v12

    const/high16 v11, 0x40000000    # 2.0f

    .line 622
    .end local v1    # "view":Landroid/view/View;
    .end local v5    # "maxSizeInOther":F
    .end local v11    # "otherDirSpecMode":I
    .end local v12    # "remainingSpan":I
    .restart local v18    # "remainingSpan":I
    .restart local v19    # "maxSizeInOther":F
    .restart local v22    # "otherDirSpecMode":I
    :goto_1b9
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v12, v18

    move/from16 v5, v19

    move/from16 v11, v22

    goto/16 :goto_145

    .end local v18    # "remainingSpan":I
    .end local v19    # "maxSizeInOther":F
    .end local v22    # "otherDirSpecMode":I
    .restart local v5    # "maxSizeInOther":F
    .restart local v11    # "otherDirSpecMode":I
    .restart local v12    # "remainingSpan":I
    :cond_1c7
    move/from16 v19, v5

    move/from16 v22, v11

    move/from16 v18, v12

    .line 649
    .end local v0    # "i":I
    .end local v5    # "maxSizeInOther":F
    .end local v11    # "otherDirSpecMode":I
    .end local v12    # "remainingSpan":I
    .restart local v18    # "remainingSpan":I
    .restart local v19    # "maxSizeInOther":F
    .restart local v22    # "otherDirSpecMode":I
    iput v4, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 651
    const/4 v0, 0x0

    .local v0, "left":I
    const/4 v1, 0x0

    .local v1, "right":I
    const/4 v2, 0x0

    .local v2, "top":I
    const/4 v3, 0x0

    .line 652
    .local v3, "bottom":I
    iget v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v8, :cond_1e7

    .line 653
    iget v5, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v5, v7, :cond_1e2

    .line 654
    iget v3, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 655
    sub-int v2, v3, v4

    goto :goto_1f4

    .line 657
    :cond_1e2
    iget v2, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 658
    add-int v3, v2, v4

    goto :goto_1f4

    .line 661
    :cond_1e7
    iget v5, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v5, v7, :cond_1f0

    .line 662
    iget v1, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 663
    sub-int v0, v1, v4

    goto :goto_1f4

    .line 665
    :cond_1f0
    iget v0, v9, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 666
    add-int v1, v0, v4

    .line 669
    :goto_1f4
    const/4 v5, 0x0

    move v7, v5

    .local v7, "i":I
    :goto_1f6
    if-ge v7, v14, :cond_29e

    .line 670
    iget-object v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v8, v5, v7

    .line 671
    .local v8, "view":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 672
    .local v11, "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    iget v5, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v12, 0x1

    if-ne v5, v12, :cond_24e

    .line 673
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v5

    if-eqz v5, :cond_230

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v5

    iget-object v12, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    move/from16 v20, v0

    .end local v0    # "left":I
    .local v20, "left":I
    iget v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    move/from16 v21, v1

    .end local v1    # "right":I
    .local v21, "right":I
    iget v1, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v0, v1

    aget v0, v12, v0

    add-int/2addr v5, v0

    .line 675
    .end local v21    # "right":I
    .local v5, "right":I
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    sub-int v0, v5, v0

    move/from16 v20, v0

    move v12, v2

    move/from16 v23, v3

    move/from16 v21, v5

    .end local v20    # "left":I
    .restart local v0    # "left":I
    goto :goto_267

    .line 677
    .end local v5    # "right":I
    .restart local v1    # "right":I
    :cond_230
    move/from16 v20, v0

    move/from16 v21, v1

    .end local v0    # "left":I
    .end local v1    # "right":I
    .restart local v20    # "left":I
    .restart local v21    # "right":I
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v5, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v5

    add-int/2addr v0, v1

    .line 678
    .end local v20    # "left":I
    .restart local v0    # "left":I
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move/from16 v20, v0

    move/from16 v21, v1

    move v12, v2

    move/from16 v23, v3

    .end local v21    # "right":I
    .restart local v1    # "right":I
    goto :goto_267

    .line 681
    :cond_24e
    move/from16 v20, v0

    move/from16 v21, v1

    .end local v0    # "left":I
    .end local v1    # "right":I
    .restart local v20    # "left":I
    .restart local v21    # "right":I
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v0

    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    iget v5, v11, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v5

    add-int/2addr v0, v1

    .line 682
    .end local v2    # "top":I
    .local v0, "top":I
    iget-object v1, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v12, v0

    move/from16 v23, v1

    .line 686
    .end local v0    # "top":I
    .end local v3    # "bottom":I
    .local v12, "top":I
    .local v23, "bottom":I
    :goto_267
    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v20

    move v3, v12

    move/from16 v24, v4

    .end local v4    # "maxSize":I
    .local v24, "maxSize":I
    move/from16 v4, v21

    move/from16 v5, v23

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 694
    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_285

    invoke-virtual {v11}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_283

    goto :goto_285

    :cond_283
    const/4 v0, 0x1

    goto :goto_288

    .line 695
    :cond_285
    :goto_285
    const/4 v0, 0x1

    iput-boolean v0, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 697
    :goto_288
    iget-boolean v1, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v8}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v10, Landroidx/recyclerview/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    .line 669
    .end local v8    # "view":Landroid/view/View;
    .end local v11    # "params":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    add-int/lit8 v7, v7, 0x1

    move v2, v12

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v3, v23

    move/from16 v4, v24

    goto/16 :goto_1f6

    .end local v12    # "top":I
    .end local v20    # "left":I
    .end local v21    # "right":I
    .end local v23    # "bottom":I
    .end local v24    # "maxSize":I
    .local v0, "left":I
    .restart local v1    # "right":I
    .restart local v2    # "top":I
    .restart local v3    # "bottom":I
    .restart local v4    # "maxSize":I
    :cond_29e
    move/from16 v20, v0

    move/from16 v21, v1

    .line 699
    .end local v0    # "left":I
    .end local v1    # "right":I
    .end local v7    # "i":I
    .restart local v20    # "left":I
    .restart local v21    # "right":I
    iget-object v0, v6, Landroidx/recyclerview/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    return-void
.end method

.method onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 6
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "anchorInfo"    # Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;
    .param p4, "itemDirection"    # I

    .line 355
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onAnchorReady(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 356
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 357
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_15

    .line 358
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 360
    :cond_15
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 361
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;
    .registers 41
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/GridLayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 996
    .local v3, "prevFocusedChild":Landroid/view/View;
    const/4 v4, 0x0

    if-nez v3, :cond_e

    .line 997
    return-object v4

    .line 999
    :cond_e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 1000
    .local v5, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    iget v6, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1001
    .local v6, "prevSpanStart":I
    iget v7, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v8, v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v7, v8

    .line 1002
    .local v7, "prevSpanEnd":I
    invoke-super/range {p0 .. p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v8

    .line 1003
    .local v8, "view":Landroid/view/View;
    if-nez v8, :cond_22

    .line 1004
    return-object v4

    .line 1008
    :cond_22
    move/from16 v4, p2

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v9

    .line 1009
    .local v9, "layoutDir":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_2d

    move v12, v11

    goto :goto_2e

    :cond_2d
    const/4 v12, 0x0

    :goto_2e
    iget-boolean v13, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mShouldReverseLayout:Z

    if-eq v12, v13, :cond_34

    move v12, v11

    goto :goto_35

    :cond_34
    const/4 v12, 0x0

    .line 1011
    .local v12, "ascend":Z
    :goto_35
    if-eqz v12, :cond_3f

    .line 1012
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v13

    sub-int/2addr v13, v11

    .line 1013
    .local v13, "start":I
    const/4 v14, -0x1

    .line 1014
    .local v14, "inc":I
    const/4 v15, -0x1

    .local v15, "limit":I
    goto :goto_45

    .line 1016
    .end local v13    # "start":I
    .end local v14    # "inc":I
    .end local v15    # "limit":I
    :cond_3f
    const/4 v13, 0x0

    .line 1017
    .restart local v13    # "start":I
    const/4 v14, 0x1

    .line 1018
    .restart local v14    # "inc":I
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v15

    .line 1020
    .restart local v15    # "limit":I
    :goto_45
    iget v10, v0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    if-ne v10, v11, :cond_51

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/GridLayoutManager;->isLayoutRTL()Z

    move-result v10

    if-eqz v10, :cond_51

    move v10, v11

    goto :goto_52

    :cond_51
    const/4 v10, 0x0

    .line 1025
    .local v10, "preferLastSpan":Z
    :goto_52
    const/16 v17, 0x0

    .line 1026
    .local v17, "focusableWeakCandidate":Landroid/view/View;
    const/16 v18, -0x1

    .line 1027
    .local v18, "focusableWeakCandidateSpanIndex":I
    const/16 v19, 0x0

    .line 1035
    .local v19, "focusableWeakCandidateOverlap":I
    const/16 v20, 0x0

    .line 1036
    .local v20, "unfocusableWeakCandidate":Landroid/view/View;
    const/16 v21, -0x1

    .line 1037
    .local v21, "unfocusableWeakCandidateSpanIndex":I
    const/16 v22, 0x0

    .line 1044
    .local v22, "unfocusableWeakCandidateOverlap":I
    invoke-direct {v0, v1, v2, v13}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v11

    .line 1045
    .local v11, "focusableSpanGroupIndex":I
    move/from16 v24, v13

    move/from16 v4, v24

    move/from16 v32, v18

    move-object/from16 v18, v5

    move/from16 v5, v32

    move/from16 v33, v19

    move-object/from16 v19, v8

    move/from16 v8, v33

    move/from16 v34, v21

    move/from16 v21, v9

    move/from16 v9, v34

    move/from16 v35, v22

    move/from16 v22, v12

    move/from16 v12, v35

    .local v4, "i":I
    .local v5, "focusableWeakCandidateSpanIndex":I
    .local v8, "focusableWeakCandidateOverlap":I
    .local v9, "unfocusableWeakCandidateSpanIndex":I
    .local v12, "unfocusableWeakCandidateOverlap":I
    .local v18, "lp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .local v19, "view":Landroid/view/View;
    .local v21, "layoutDir":I
    .local v22, "ascend":Z
    :goto_7e
    if-eq v4, v15, :cond_186

    .line 1046
    move/from16 v24, v13

    .end local v13    # "start":I
    .local v24, "start":I
    invoke-direct {v0, v1, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v13

    .line 1047
    .local v13, "spanGroupIndex":I
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1048
    .local v1, "candidate":Landroid/view/View;
    if-ne v1, v3, :cond_96

    .line 1049
    move-object/from16 v25, v3

    move/from16 v31, v5

    move/from16 v16, v8

    move/from16 v26, v11

    goto/16 :goto_190

    .line 1052
    :cond_96
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v25

    if-eqz v25, :cond_b5

    if-eq v13, v11, :cond_b5

    .line 1057
    if-eqz v17, :cond_aa

    .line 1058
    move-object/from16 v25, v3

    move/from16 v31, v5

    move/from16 v16, v8

    move/from16 v26, v11

    goto/16 :goto_190

    .line 1057
    :cond_aa
    move-object/from16 v25, v3

    move/from16 v31, v5

    move/from16 v16, v8

    move/from16 v26, v11

    const/4 v8, 0x1

    goto/16 :goto_175

    .line 1063
    :cond_b5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move-object/from16 v2, v25

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 1064
    .local v2, "candidateLp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    move-object/from16 v25, v3

    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .local v25, "prevFocusedChild":Landroid/view/View;
    iget v3, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1065
    .local v3, "candidateStart":I
    move/from16 v26, v11

    .end local v11    # "focusableSpanGroupIndex":I
    .local v26, "focusableSpanGroupIndex":I
    iget v11, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move/from16 v27, v13

    .end local v13    # "spanGroupIndex":I
    .local v27, "spanGroupIndex":I
    iget v13, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v11, v13

    .line 1066
    .local v11, "candidateEnd":I
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v13

    if-eqz v13, :cond_d5

    if-ne v3, v6, :cond_d5

    if-ne v11, v7, :cond_d5

    .line 1068
    return-object v1

    .line 1070
    :cond_d5
    const/4 v13, 0x0

    .line 1071
    .local v13, "assignAsWeek":Z
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v28

    if-eqz v28, :cond_de

    if-eqz v17, :cond_e6

    .line 1072
    :cond_de
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v28

    if-nez v28, :cond_f0

    if-nez v20, :cond_f0

    .line 1073
    :cond_e6
    const/4 v13, 0x1

    move/from16 v31, v5

    move/from16 v16, v8

    move/from16 v30, v13

    const/4 v8, 0x1

    goto/16 :goto_147

    .line 1075
    :cond_f0
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 1076
    .local v28, "maxStart":I
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 1077
    .local v29, "minEnd":I
    move/from16 v30, v13

    .end local v13    # "assignAsWeek":Z
    .local v30, "assignAsWeek":Z
    sub-int v13, v29, v28

    .line 1078
    .local v13, "overlap":I
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v31

    if-eqz v31, :cond_124

    .line 1079
    if-le v13, v8, :cond_10c

    .line 1080
    const/16 v30, 0x1

    move/from16 v31, v5

    move/from16 v16, v8

    const/4 v8, 0x1

    goto :goto_147

    .line 1081
    :cond_10c
    if-ne v13, v8, :cond_11e

    move/from16 v31, v5

    if-le v3, v5, :cond_114

    const/4 v5, 0x1

    goto :goto_115

    :cond_114
    const/4 v5, 0x0

    .end local v5    # "focusableWeakCandidateSpanIndex":I
    .local v31, "focusableWeakCandidateSpanIndex":I
    :goto_115
    if-ne v10, v5, :cond_120

    .line 1084
    const/4 v5, 0x1

    move/from16 v30, v5

    move/from16 v16, v8

    const/4 v8, 0x1

    .end local v30    # "assignAsWeek":Z
    .local v5, "assignAsWeek":Z
    goto :goto_147

    .line 1081
    .end local v31    # "focusableWeakCandidateSpanIndex":I
    .local v5, "focusableWeakCandidateSpanIndex":I
    .restart local v30    # "assignAsWeek":Z
    :cond_11e
    move/from16 v31, v5

    .end local v5    # "focusableWeakCandidateSpanIndex":I
    .restart local v31    # "focusableWeakCandidateSpanIndex":I
    :cond_120
    move/from16 v16, v8

    const/4 v8, 0x1

    goto :goto_147

    .line 1086
    .end local v31    # "focusableWeakCandidateSpanIndex":I
    .restart local v5    # "focusableWeakCandidateSpanIndex":I
    :cond_124
    move/from16 v31, v5

    .end local v5    # "focusableWeakCandidateSpanIndex":I
    .restart local v31    # "focusableWeakCandidateSpanIndex":I
    if-nez v17, :cond_144

    .line 1087
    move/from16 v16, v8

    const/4 v5, 0x0

    const/4 v8, 0x1

    .end local v8    # "focusableWeakCandidateOverlap":I
    .local v16, "focusableWeakCandidateOverlap":I
    invoke-virtual {v0, v1, v5, v8}, Landroidx/recyclerview/widget/GridLayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v23

    if-eqz v23, :cond_147

    .line 1088
    if-le v13, v12, :cond_139

    .line 1089
    const/16 v23, 0x1

    move/from16 v30, v23

    .end local v30    # "assignAsWeek":Z
    .local v23, "assignAsWeek":Z
    goto :goto_147

    .line 1090
    .end local v23    # "assignAsWeek":Z
    .restart local v30    # "assignAsWeek":Z
    :cond_139
    if-ne v13, v12, :cond_147

    if-le v3, v9, :cond_13e

    move v5, v8

    :cond_13e
    if-ne v10, v5, :cond_147

    .line 1093
    const/4 v5, 0x1

    move/from16 v30, v5

    .end local v30    # "assignAsWeek":Z
    .local v5, "assignAsWeek":Z
    goto :goto_147

    .line 1086
    .end local v5    # "assignAsWeek":Z
    .end local v16    # "focusableWeakCandidateOverlap":I
    .restart local v8    # "focusableWeakCandidateOverlap":I
    .restart local v30    # "assignAsWeek":Z
    :cond_144
    move/from16 v16, v8

    const/4 v8, 0x1

    .line 1098
    .end local v8    # "focusableWeakCandidateOverlap":I
    .end local v13    # "overlap":I
    .end local v28    # "maxStart":I
    .end local v29    # "minEnd":I
    .restart local v16    # "focusableWeakCandidateOverlap":I
    :cond_147
    :goto_147
    if-eqz v30, :cond_175

    .line 1099
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_162

    .line 1100
    move-object v5, v1

    .line 1101
    .end local v17    # "focusableWeakCandidate":Landroid/view/View;
    .local v5, "focusableWeakCandidate":Landroid/view/View;
    iget v13, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1102
    .end local v31    # "focusableWeakCandidateSpanIndex":I
    .local v13, "focusableWeakCandidateSpanIndex":I
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 1103
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v28

    sub-int v17, v17, v28

    move/from16 v16, v17

    move-object/from16 v17, v5

    move v5, v13

    .end local v16    # "focusableWeakCandidateOverlap":I
    .local v17, "focusableWeakCandidateOverlap":I
    goto :goto_177

    .line 1105
    .end local v5    # "focusableWeakCandidate":Landroid/view/View;
    .end local v13    # "focusableWeakCandidateSpanIndex":I
    .restart local v16    # "focusableWeakCandidateOverlap":I
    .local v17, "focusableWeakCandidate":Landroid/view/View;
    .restart local v31    # "focusableWeakCandidateSpanIndex":I
    :cond_162
    move-object v5, v1

    .line 1106
    .end local v20    # "unfocusableWeakCandidate":Landroid/view/View;
    .local v5, "unfocusableWeakCandidate":Landroid/view/View;
    iget v9, v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1107
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1108
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v20

    sub-int v13, v13, v20

    move-object/from16 v20, v5

    move v12, v13

    move/from16 v5, v31

    .end local v12    # "unfocusableWeakCandidateOverlap":I
    .local v13, "unfocusableWeakCandidateOverlap":I
    goto :goto_177

    .line 1045
    .end local v1    # "candidate":Landroid/view/View;
    .end local v2    # "candidateLp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    .end local v13    # "unfocusableWeakCandidateOverlap":I
    .end local v16    # "focusableWeakCandidateOverlap":I
    .end local v25    # "prevFocusedChild":Landroid/view/View;
    .end local v26    # "focusableSpanGroupIndex":I
    .end local v27    # "spanGroupIndex":I
    .end local v30    # "assignAsWeek":Z
    .end local v31    # "focusableWeakCandidateSpanIndex":I
    .local v3, "prevFocusedChild":Landroid/view/View;
    .local v5, "focusableWeakCandidateSpanIndex":I
    .restart local v8    # "focusableWeakCandidateOverlap":I
    .local v11, "focusableSpanGroupIndex":I
    .restart local v12    # "unfocusableWeakCandidateOverlap":I
    .restart local v20    # "unfocusableWeakCandidate":Landroid/view/View;
    :cond_175
    :goto_175
    move/from16 v5, v31

    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .end local v8    # "focusableWeakCandidateOverlap":I
    .end local v11    # "focusableSpanGroupIndex":I
    .restart local v16    # "focusableWeakCandidateOverlap":I
    .restart local v25    # "prevFocusedChild":Landroid/view/View;
    .restart local v26    # "focusableSpanGroupIndex":I
    :goto_177
    add-int/2addr v4, v14

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v8, v16

    move/from16 v13, v24

    move-object/from16 v3, v25

    move/from16 v11, v26

    goto/16 :goto_7e

    .end local v16    # "focusableWeakCandidateOverlap":I
    .end local v24    # "start":I
    .end local v25    # "prevFocusedChild":Landroid/view/View;
    .end local v26    # "focusableSpanGroupIndex":I
    .restart local v3    # "prevFocusedChild":Landroid/view/View;
    .restart local v8    # "focusableWeakCandidateOverlap":I
    .restart local v11    # "focusableSpanGroupIndex":I
    .local v13, "start":I
    :cond_186
    move-object/from16 v25, v3

    move/from16 v31, v5

    move/from16 v16, v8

    move/from16 v26, v11

    move/from16 v24, v13

    .line 1112
    .end local v3    # "prevFocusedChild":Landroid/view/View;
    .end local v4    # "i":I
    .end local v5    # "focusableWeakCandidateSpanIndex":I
    .end local v8    # "focusableWeakCandidateOverlap":I
    .end local v11    # "focusableSpanGroupIndex":I
    .end local v13    # "start":I
    .restart local v16    # "focusableWeakCandidateOverlap":I
    .restart local v24    # "start":I
    .restart local v25    # "prevFocusedChild":Landroid/view/View;
    .restart local v26    # "focusableSpanGroupIndex":I
    .restart local v31    # "focusableWeakCandidateSpanIndex":I
    :goto_190
    if-eqz v17, :cond_195

    move-object/from16 v1, v17

    goto :goto_197

    :cond_195
    move-object/from16 v1, v20

    :goto_197
    return-object v1
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 16
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "host"    # Landroid/view/View;
    .param p4, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 146
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_c

    .line 148
    invoke-super {p0, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 149
    return-void

    .line 151
    :cond_c
    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 152
    .local v1, "glp":Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getViewLayoutPosition()I

    move-result v2

    invoke-direct {p0, p1, p2, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanGroupIndex(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;I)I

    move-result v2

    .line 153
    .local v2, "spanGroupIndex":I
    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_44

    .line 154
    nop

    .line 155
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v6

    const/4 v7, 0x1

    iget v8, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-le v8, v5, :cond_35

    .line 157
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    iget v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne v8, v9, :cond_35

    move v8, v5

    goto :goto_36

    :cond_35
    move v8, v4

    :goto_36
    const/4 v9, 0x0

    .line 154
    move v4, v6

    move v5, v2

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-static/range {v3 .. v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_6a

    .line 159
    :cond_44
    const/4 v6, 0x1

    .line 161
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v7

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v8

    iget v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-le v3, v5, :cond_5b

    .line 162
    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v3

    iget v9, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne v3, v9, :cond_5b

    move v9, v5

    goto :goto_5c

    :cond_5b
    move v9, v4

    :goto_5c
    const/4 v10, 0x0

    .line 159
    move v3, v2

    move v4, v6

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    invoke-static/range {v3 .. v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    .line 164
    :goto_6a
    return-void
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 201
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 202
    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 206
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 207
    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .registers 6
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "itemCount"    # I

    .line 222
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 223
    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .line 211
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 212
    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 6
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 217
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 218
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4
    .param p1, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 168
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 169
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 171
    :cond_9
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 175
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    .line 176
    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 3
    .param p1, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 180
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 182
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 372
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 373
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 374
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 5
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .line 380
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->updateMeasurements()V

    .line 381
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->ensureViewSet()V

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 12
    .param p1, "childrenBounds"    # Landroid/graphics/Rect;
    .param p2, "wSpec"    # I
    .param p3, "hSpec"    # I

    .line 286
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_7

    .line 287
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 290
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    .local v0, "horizontalPadding":I
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 292
    .local v1, "verticalPadding":I
    iget v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v2, v1

    .line 294
    .local v2, "usedHeight":I
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v4

    invoke-static {p3, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    .line 295
    .local v4, "height":I
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v5

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v0

    .line 296
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v5

    .line 295
    invoke-static {p2, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v2

    .line 297
    .local v2, "width":I
    goto :goto_5a

    .line 298
    .end local v2    # "width":I
    .end local v4    # "height":I
    :cond_3b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v2, v0

    .line 299
    .local v2, "usedWidth":I
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumWidth()I

    move-result v4

    invoke-static {p2, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v4

    .line 300
    .local v4, "width":I
    iget-object v5, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v6, v5

    sub-int/2addr v6, v3

    aget v3, v5, v6

    add-int/2addr v3, v1

    .line 301
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->getMinimumHeight()I

    move-result v5

    .line 300
    invoke-static {p3, v3, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->chooseSize(III)I

    move-result v2

    move v7, v4

    move v4, v2

    move v2, v7

    .line 303
    .local v2, "width":I
    .local v4, "height":I
    :goto_5a
    invoke-virtual {p0, v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setMeasuredDimension(II)V

    .line 304
    return-void
.end method

.method public setSpanCount(I)V
    .registers 5
    .param p1, "spanCount"    # I

    .line 810
    iget v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_5

    .line 811
    return-void

    .line 813
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    .line 814
    if-lt p1, v0, :cond_15

    .line 818
    iput p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanCount:I

    .line 819
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 820
    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->requestLayout()V

    .line 821
    return-void

    .line 815
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Span count should be at least 1. Provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 2
    .param p1, "spanSizeLookup"    # Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 262
    iput-object p1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mSpanSizeLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 263
    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 4
    .param p1, "stackFromEnd"    # Z

    .line 107
    if-nez p1, :cond_7

    .line 112
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 113
    return-void

    .line 108
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .line 1117
    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSavedState:Landroidx/recyclerview/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
