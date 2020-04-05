.class public Lcom/example/myapplication/Main9Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Main9Activity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main9Activity;->setContentView(I)V

    .line 13
    invoke-virtual {p0}, Lcom/example/myapplication/Main9Activity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 14
    invoke-virtual {p0}, Lcom/example/myapplication/Main9Activity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    .line 15
    return-void
.end method
