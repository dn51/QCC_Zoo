.class Lcom/example/myapplication/Main2Activity$1;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/myapplication/Main2Activity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/myapplication/Main2Activity;


# direct methods
.method constructor <init>(Lcom/example/myapplication/Main2Activity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/example/myapplication/Main2Activity;

    .line 22
    iput-object p1, p0, Lcom/example/myapplication/Main2Activity$1;->this$0:Lcom/example/myapplication/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/example/myapplication/Main2Activity$1;->this$0:Lcom/example/myapplication/Main2Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/example/myapplication/Main2Activity;->moveTaskToBack(Z)Z

    .line 26
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 27
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 29
    return-void
.end method
