.class public Lcom/example/myapplication/Main2Activity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Main2Activity.java"


# instance fields
.field b:Landroid/widget/Button;

.field exitbt:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public activity_main3(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/myapplication/Main3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    const v1, 0x7f010025

    const v2, 0x7f010026

    invoke-virtual {p0, v1, v2}, Lcom/example/myapplication/Main2Activity;->overridePendingTransition(II)V

    .line 55
    return-void
.end method

.method public aquatic(Landroid/view/View;)V
    .registers 4
    .param p1, "start"    # Landroid/view/View;

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/myapplication/Main4Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "aquatic":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public birds(Landroid/view/View;)V
    .registers 4
    .param p1, "start"    # Landroid/view/View;

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/myapplication/Main3Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "birds":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public mammals(Landroid/view/View;)V
    .registers 4
    .param p1, "start"    # Landroid/view/View;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/myapplication/Main5Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, "mammals":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main2Activity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/example/myapplication/Main2Activity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 20
    invoke-virtual {p0}, Lcom/example/myapplication/Main2Activity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    .line 21
    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/example/myapplication/Main2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/myapplication/Main2Activity;->exitbt:Landroid/widget/Button;

    .line 22
    iget-object v0, p0, Lcom/example/myapplication/Main2Activity;->exitbt:Landroid/widget/Button;

    new-instance v1, Lcom/example/myapplication/Main2Activity$1;

    invoke-direct {v1, p0}, Lcom/example/myapplication/Main2Activity$1;-><init>(Lcom/example/myapplication/Main2Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
