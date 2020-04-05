.class public Lcom/example/myapplication/Main12Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Main12Activity.java"


# instance fields
.field videoView:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main12Activity;->setContentView(I)V

    .line 19
    return-void
.end method
