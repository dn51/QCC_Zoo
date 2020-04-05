.class public Lcom/example/myapplication/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field mysong:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public START(Landroid/view/View;)V
    .registers 4
    .param p1, "start"    # Landroid/view/View;

    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/myapplication/Main2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "START":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-virtual {p0}, Lcom/example/myapplication/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/example/myapplication/MainActivity;->mysong:Landroid/media/MediaPlayer;

    .line 20
    iget-object v0, p0, Lcom/example/myapplication/MainActivity;->mysong:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lcom/example/myapplication/MainActivity;->setContentView(I)V

    .line 24
    invoke-virtual {p0}, Lcom/example/myapplication/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 25
    invoke-virtual {p0}, Lcom/example/myapplication/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 60
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 62
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 47
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 42
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 44
    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 35
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 36
    const-string v0, "Welcome To My APP"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 53
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 54
    iget-object v0, p0, Lcom/example/myapplication/MainActivity;->mysong:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 55
    invoke-virtual {p0}, Lcom/example/myapplication/MainActivity;->finish()V

    .line 56
    return-void
.end method
