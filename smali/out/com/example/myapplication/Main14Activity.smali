.class public Lcom/example/myapplication/Main14Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Main14Activity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 11
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main14Activity;->setContentView(I)V

    .line 13
    return-void
.end method
