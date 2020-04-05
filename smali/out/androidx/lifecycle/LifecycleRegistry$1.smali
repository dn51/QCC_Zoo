.class synthetic Landroidx/lifecycle/LifecycleRegistry$1;
.super Ljava/lang/Object;
.source "LifecycleRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LifecycleRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

.field static final synthetic $SwitchMap$androidx$lifecycle$Lifecycle$State:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 261
    invoke-static {}, Landroidx/lifecycle/Lifecycle$State;->values()[Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v3}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x4

    :try_start_31
    sget-object v4, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v4

    :goto_3d
    const/4 v4, 0x5

    :try_start_3e
    sget-object v5, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    sget-object v6, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v5

    .line 243
    :goto_4a
    invoke-static {}, Landroidx/lifecycle/Lifecycle$Event;->values()[Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    :try_start_53
    sget-object v5, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v6, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v6}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_5d} :catch_5e

    goto :goto_5f

    :catch_5e
    move-exception v0

    :goto_5f
    :try_start_5f
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v5, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v5}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    move-exception v0

    :goto_6b
    :try_start_6b
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_76

    goto :goto_77

    :catch_76
    move-exception v0

    :goto_77
    :try_start_77
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v0

    :goto_83
    :try_start_83
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    move-exception v0

    :goto_8f
    :try_start_8f
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :goto_9c
    :try_start_9c
    sget-object v0, Landroidx/lifecycle/LifecycleRegistry$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a7} :catch_a8

    goto :goto_a9

    :catch_a8
    move-exception v0

    :goto_a9
    return-void
.end method
