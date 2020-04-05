.class Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .registers 2

    .line 395
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/google/android/material/chip/ChipGroup;
    .param p2, "x1"    # Lcom/google/android/material/chip/ChipGroup$1;

    .line 395
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 399
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v0}, Lcom/google/android/material/chip/ChipGroup;->access$300(Lcom/google/android/material/chip/ChipGroup;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 400
    return-void

    .line 403
    :cond_9
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    .line 405
    .local v0, "id":I
    const/4 v1, -0x1

    if-eqz p2, :cond_38

    .line 406
    iget-object v2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v2}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v2

    if-eq v2, v1, :cond_32

    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v1}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v1

    if-eq v1, v0, :cond_32

    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v1}, Lcom/google/android/material/chip/ChipGroup;->access$500(Lcom/google/android/material/chip/ChipGroup;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 407
    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v1}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/material/chip/ChipGroup;->access$600(Lcom/google/android/material/chip/ChipGroup;IZ)V

    .line 409
    :cond_32
    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v1, v0}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;I)V

    goto :goto_45

    .line 411
    :cond_38
    iget-object v2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v2}, Lcom/google/android/material/chip/ChipGroup;->access$400(Lcom/google/android/material/chip/ChipGroup;)I

    move-result v2

    if-ne v2, v0, :cond_45

    .line 412
    iget-object v2, p0, Lcom/google/android/material/chip/ChipGroup$CheckedStateTracker;->this$0:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v2, v1}, Lcom/google/android/material/chip/ChipGroup;->access$700(Lcom/google/android/material/chip/ChipGroup;I)V

    .line 415
    :cond_45
    :goto_45
    return-void
.end method
