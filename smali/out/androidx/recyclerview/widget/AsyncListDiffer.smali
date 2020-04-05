.class public Landroidx/recyclerview/widget/AsyncListDiffer;
.super Ljava/lang/Object;
.source "AsyncListDiffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field final mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field mMaxScheduledGeneration:I

.field private mReadOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 131
    new-instance v0, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;

    invoke-direct {v0}, Landroidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .registers 4
    .param p1, "listUpdateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p2, "config":Landroidx/recyclerview/widget/AsyncDifferConfig;, "Landroidx/recyclerview/widget/AsyncDifferConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    nop

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 162
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 163
    iput-object p2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    .line 164
    invoke-virtual {p2}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 165
    invoke-virtual {p2}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1f

    .line 167
    :cond_1b
    sget-object v0, Landroidx/recyclerview/widget/AsyncListDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 169
    :goto_1f
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .registers 5
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p2, "diffCallback":Landroidx/recyclerview/widget/DiffUtil$ItemCallback;, "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<TT;>;"
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v1, p2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 146
    invoke-virtual {v1}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v1

    .line 145
    invoke-direct {p0, v0, v1}, Landroidx/recyclerview/widget/AsyncListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    .line 147
    return-void
.end method


# virtual methods
.method public getCurrentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    return-object v0
.end method

.method latchList(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .registers 4
    .param p2, "diffResult"    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            ")V"
        }
    .end annotation

    .line 315
    .local p0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 317
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 318
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 319
    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Landroidx/recyclerview/widget/AsyncListDiffer;, "Landroidx/recyclerview/widget/AsyncListDiffer<TT;>;"
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mMaxScheduledGeneration:I

    .line 217
    .local v0, "runGeneration":I
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    if-ne p1, v1, :cond_b

    .line 219
    return-void

    .line 223
    :cond_b
    const/4 v2, 0x0

    if-nez p1, :cond_21

    .line 225
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 226
    .local v1, "countRemoved":I
    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 229
    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v3, v2, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 230
    return-void

    .line 234
    .end local v1    # "countRemoved":I
    :cond_21
    if-nez v1, :cond_35

    .line 235
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 236
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mReadOnlyList:Ljava/util/List;

    .line 238
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 239
    return-void

    .line 242
    :cond_35
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mList:Ljava/util/List;

    .line 243
    .local v1, "oldList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListDiffer;->mConfig:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Landroidx/recyclerview/widget/AsyncListDiffer$1;

    invoke-direct {v3, p0, v1, p1, v0}, Landroidx/recyclerview/widget/AsyncListDiffer$1;-><init>(Landroidx/recyclerview/widget/AsyncListDiffer;Ljava/util/List;Ljava/util/List;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method
