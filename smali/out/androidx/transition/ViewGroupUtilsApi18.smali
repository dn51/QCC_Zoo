.class Landroidx/transition/ViewGroupUtilsApi18;
.super Ljava/lang/Object;
.source "ViewGroupUtilsApi18.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewUtilsApi18"

.field private static sSuppressLayoutMethod:Ljava/lang/reflect/Method;

.field private static sSuppressLayoutMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method private static fetchSuppressLayoutMethod()V
    .registers 6

    .line 50
    sget-boolean v0, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    if-nez v0, :cond_26

    .line 52
    const/4 v0, 0x1

    :try_start_5
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "suppressLayout"

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    .line 54
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_1b} :catch_1c

    .line 57
    goto :goto_24

    .line 55
    :catch_1c
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v2, "ViewUtilsApi18"

    const-string v3, "Failed to retrieve suppressLayout method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_24
    sput-boolean v0, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethodFetched:Z

    .line 60
    :cond_26
    return-void
.end method

.method static suppressLayout(Landroid/view/ViewGroup;Z)V
    .registers 7
    .param p0, "group"    # Landroid/view/ViewGroup;
    .param p1, "suppress"    # Z

    .line 37
    const-string v0, "ViewUtilsApi18"

    invoke-static {}, Landroidx/transition/ViewGroupUtilsApi18;->fetchSuppressLayoutMethod()V

    .line 38
    sget-object v1, Landroidx/transition/ViewGroupUtilsApi18;->sSuppressLayoutMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_24

    .line 40
    const/4 v2, 0x1

    :try_start_a
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_1e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_24

    .line 43
    :catch_17
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Error invoking suppressLayout method"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 41
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1e
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Failed to invoke suppressLayout method"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_24
    :goto_24
    return-void
.end method
