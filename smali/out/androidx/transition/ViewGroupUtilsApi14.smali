.class Landroidx/transition/ViewGroupUtilsApi14;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi14.java"


# static fields
.field private static final LAYOUT_TRANSITION_CHANGING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ViewGroupUtilsApi14"

.field private static sCancelMethod:Ljava/lang/reflect/Method;

.field private static sCancelMethodFetched:Z

.field private static sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

.field private static sLayoutSuppressedField:Ljava/lang/reflect/Field;

.field private static sLayoutSuppressedFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    return-void
.end method

.method private static cancelLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 8
    .param p0, "t"    # Landroid/animation/LayoutTransition;

    .line 109
    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    const-string v1, "Failed to access cancel method by reflection"

    const/4 v2, 0x0

    const-string v3, "ViewGroupUtilsApi14"

    if-nez v0, :cond_22

    .line 111
    const/4 v0, 0x1

    :try_start_a
    const-class v4, Landroid/animation/LayoutTransition;

    const-string v5, "cancel"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    .line 112
    sget-object v4, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1b} :catch_1c

    .line 115
    goto :goto_20

    .line 113
    :catch_1c
    move-exception v4

    .line 114
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :goto_20
    sput-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethodFetched:Z

    .line 118
    :cond_22
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sCancelMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_37

    .line 120
    :try_start_26
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_2b} :catch_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_37

    .line 123
    :catch_2c
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "Failed to invoke cancel method by reflection"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 121
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_33
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_37
    :goto_37
    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 8
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "suppress"    # Z

    .line 45
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2a

    .line 46
    new-instance v0, Landroidx/transition/ViewGroupUtilsApi14$1;

    invoke-direct {v0}, Landroidx/transition/ViewGroupUtilsApi14$1;-><init>()V

    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    .line 52
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 53
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 54
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 55
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 56
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v3}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 58
    :cond_2a
    if-eqz p1, :cond_4a

    .line 60
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 61
    .local v0, "layoutTransition":Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_44

    .line 62
    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 63
    invoke-static {v0}, Landroidx/transition/ViewGroupUtilsApi14;->cancelLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 65
    :cond_3b
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    if-eq v0, v1, :cond_44

    .line 66
    sget v1, Landroidx/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 70
    :cond_44
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi14;->sEmptyLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 71
    .end local v0    # "layoutTransition":Landroid/animation/LayoutTransition;
    goto :goto_9a

    .line 73
    :cond_4a
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 75
    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    const-string v4, "ViewGroupUtilsApi14"

    if-nez v0, :cond_6b

    .line 77
    :try_start_53
    const-class v0, Landroid/view/ViewGroup;

    const-string v5, "mLayoutSuppressed"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    .line 78
    sget-object v0, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_62
    .catch Ljava/lang/NoSuchFieldException; {:try_start_53 .. :try_end_62} :catch_63

    .line 81
    goto :goto_69

    .line 79
    :catch_63
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "Failed to access mLayoutSuppressed field by reflection"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_69
    sput-boolean v2, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedFieldFetched:Z

    .line 84
    :cond_6b
    const/4 v0, 0x0

    .line 85
    .local v0, "layoutSuppressed":Z
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_83

    .line 87
    :try_start_70
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 88
    if-eqz v0, :cond_7c

    .line 89
    sget-object v2, Landroidx/transition/ViewGroupUtilsApi14;->sLayoutSuppressedField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_7c
    .catch Ljava/lang/IllegalAccessException; {:try_start_70 .. :try_end_7c} :catch_7d

    .line 93
    :cond_7c
    goto :goto_83

    .line 91
    :catch_7d
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Failed to get mLayoutSuppressed field by reflection"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_83
    :goto_83
    if-eqz v0, :cond_88

    .line 96
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 99
    :cond_88
    sget v1, Landroidx/transition/R$id;->transition_layout_save:I

    .line 100
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/LayoutTransition;

    .line 101
    .local v1, "layoutTransition":Landroid/animation/LayoutTransition;
    if-eqz v1, :cond_9a

    .line 102
    sget v2, Landroidx/transition/R$id;->transition_layout_save:I

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 103
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 106
    .end local v0    # "layoutSuppressed":Z
    .end local v1    # "layoutTransition":Landroid/animation/LayoutTransition;
    :cond_9a
    :goto_9a
    return-void
.end method
