.class Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;
.super Ljava/lang/Object;
.source "BundleCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/BundleCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BundleCompatBaseImpl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatBaseImpl"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 48
    sget-boolean v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    const/4 v1, 0x0

    const-string v2, "BundleCompatBaseImpl"

    const/4 v3, 0x1

    if-nez v0, :cond_26

    .line 50
    :try_start_8
    const-class v0, Landroid/os/Bundle;

    const-string v4, "getIBinder"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 51
    sget-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 54
    goto :goto_24

    .line 52
    :catch_1e
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Failed to retrieve getIBinder method"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_24
    sput-boolean v3, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethodFetched:Z

    .line 58
    :cond_26
    sget-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    if-eqz v0, :cond_42

    .line 60
    :try_start_2b
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_35} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_35} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_35} :catch_36

    return-object v0

    .line 61
    :catch_36
    move-exception v0

    goto :goto_3b

    :catch_38
    move-exception v0

    goto :goto_3b

    :catch_3a
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :goto_3b
    const-string v1, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    sput-object v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_42
    return-object v4
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 11
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 71
    sget-boolean v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    const/4 v1, 0x0

    const-string v2, "BundleCompatBaseImpl"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_2b

    .line 73
    :try_start_9
    const-class v0, Landroid/os/Bundle;

    const-string v5, "putIBinder"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v4

    .line 74
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 75
    sget-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_22} :catch_23

    .line 78
    goto :goto_29

    .line 76
    :catch_23
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Failed to retrieve putIBinder method"

    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_29
    sput-boolean v4, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethodFetched:Z

    .line 82
    :cond_2b
    sget-object v0, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_46

    .line 84
    :try_start_2f
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_38} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_38} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_38} :catch_39

    .line 89
    goto :goto_46

    .line 85
    :catch_39
    move-exception v0

    goto :goto_3e

    :catch_3b
    move-exception v0

    goto :goto_3e

    :catch_3d
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    :goto_3e
    const-string v1, "Failed to invoke putIBinder via reflection"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    const/4 v1, 0x0

    sput-object v1, Landroidx/core/app/BundleCompat$BundleCompatBaseImpl;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 91
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void
.end method
