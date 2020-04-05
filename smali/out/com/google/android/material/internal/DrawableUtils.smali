.class public Lcom/google/android/material/internal/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrawableUtils"

.field private static setConstantStateMethod:Ljava/lang/reflect/Method;

.field private static setConstantStateMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContainerConstantState(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 3
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 45
    invoke-static {p0, p1}, Lcom/google/android/material/internal/DrawableUtils;->setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z

    move-result v0

    return v0
.end method

.method private static setContainerConstantStateV9(Landroid/graphics/drawable/DrawableContainer;Landroid/graphics/drawable/Drawable$ConstantState;)Z
    .registers 9
    .param p0, "drawable"    # Landroid/graphics/drawable/DrawableContainer;
    .param p1, "constantState"    # Landroid/graphics/drawable/Drawable$ConstantState;

    .line 50
    sget-boolean v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethodFetched:Z

    const-string v1, "DrawableUtils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_26

    .line 52
    :try_start_8
    const-class v0, Landroid/graphics/drawable/DrawableContainer;

    const-string v4, "setConstantState"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    aput-object v6, v5, v2

    .line 53
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    .line 55
    sget-object v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 58
    goto :goto_24

    .line 56
    :catch_1e
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Could not fetch setConstantState(). Oh well."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_24
    sput-boolean v3, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethodFetched:Z

    .line 61
    :cond_26
    sget-object v0, Lcom/google/android/material/internal/DrawableUtils;->setConstantStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_38

    .line 63
    :try_start_2a
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_32

    .line 64
    return v3

    .line 65
    :catch_32
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Could not invoke setConstantState(). Oh well."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_38
    return v2
.end method
