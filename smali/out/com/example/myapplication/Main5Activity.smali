.class public Lcom/example/myapplication/Main5Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Main5Activity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public leon(Landroid/view/View;)V
    .registers 4
    .param p1, "start"    # Landroid/view/View;

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/myapplication/Main13Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "leon":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main5Activity;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 13
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main5Activity;->setContentView(I)V

    .line 15
    invoke-virtual {p0}, Lcom/example/myapplication/Main5Activity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 16
    invoke-virtual {p0}, Lcom/example/myapplication/Main5Activity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    .line 17
    return-void
.end method

.method public panda(Landroid/view/View;)V
    .registers 4
    .param p1, "start"    # Landroid/view/View;

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/myapplication/Main14Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .local v0, "panda":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main5Activity;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method

.method public tiger(Landroid/view/View;)V
    .registers 4
    .param p1, "start"    # Landroid/view/View;

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/myapplication/Main12Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, "tiger":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main5Activity;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method
