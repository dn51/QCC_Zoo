.class Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .registers 3

    monitor-enter p0

    .line 236
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_12

    if-nez v0, :cond_8

    .line 237
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 239
    :cond_8
    :try_start_8
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 240
    .local v0, "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    .line 241
    monitor-exit p0

    return-object v0

    .line 235
    .end local v0    # "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local p0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeMessages(I)V
    .registers 6
    .param p1, "what"    # I

    monitor-enter p0

    .line 262
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget v0, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v0, p1, :cond_17

    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 264
    .local v0, "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 265
    invoke-virtual {v0}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V

    .line 266
    .end local v0    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_1

    .line 267
    .end local p0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :cond_17
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v0, :cond_30

    .line 268
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 269
    .local v0, "prev":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 270
    .local v1, "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_1f
    if-eqz v1, :cond_30

    .line 271
    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 272
    .local v2, "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    iget v3, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_2d

    .line 273
    iput-object v2, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 274
    invoke-virtual {v1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_32

    goto :goto_2e

    .line 276
    :cond_2d
    move-object v0, v1

    .line 278
    :goto_2e
    move-object v1, v2

    .line 279
    .end local v2    # "next":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    goto :goto_1f

    .line 281
    .end local v0    # "prev":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local v1    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :cond_30
    monitor-exit p0

    return-void

    .line 261
    .end local p1    # "what":I
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 4
    .param p1, "item"    # Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    monitor-enter p0

    .line 250
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v0, :cond_9

    .line 251
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_17

    .line 252
    monitor-exit p0

    return-void

    .line 254
    .end local p0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    :cond_9
    :try_start_9
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 255
    .local v0, "last":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :goto_b
    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_13

    .line 256
    iget-object v1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    move-object v0, v1

    goto :goto_b

    .line 258
    :cond_13
    iput-object p1, v0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_17

    .line 259
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "last":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .end local p1    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendMessageAtFrontOfQueue(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .registers 3
    .param p1, "item"    # Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    monitor-enter p0

    .line 245
    :try_start_1
    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v0, p1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 246
    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 247
    monitor-exit p0

    return-void

    .line 244
    .end local p0    # "this":Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
    .end local p1    # "item":Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method
