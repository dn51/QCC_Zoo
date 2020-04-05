.class public abstract Landroidx/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Transition$EpicenterCallback;,
        Landroidx/transition/Transition$ArrayListManager;,
        Landroidx/transition/Transition$AnimationInfo;,
        Landroidx/transition/Transition$TransitionListener;,
        Landroidx/transition/Transition$MatchOrder;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroidx/transition/TransitionValuesMaps;

.field private mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field private mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field private mNameOverrides:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumInstances:I

.field mParent:Landroidx/transition/TransitionSet;

.field private mPathMotion:Landroidx/transition/PathMotion;

.field private mPaused:Z

.field mPropagation:Landroidx/transition/TransitionPropagation;

.field private mSceneRoot:Landroid/view/ViewGroup;

.field private mStartDelay:J

.field private mStartValues:Landroidx/transition/TransitionValuesMaps;

.field private mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 163
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    .line 170
    new-instance v0, Landroidx/transition/Transition$1;

    invoke-direct {v0}, Landroidx/transition/Transition$1;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    .line 204
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 183
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 196
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 197
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 198
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 199
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 208
    iput-object v0, p0, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 225
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 228
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 232
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 235
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 254
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 263
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 183
    iput-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    .line 187
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 196
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 197
    new-instance v1, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v1}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 198
    iput-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    .line 199
    sget-object v1, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v1, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 208
    iput-object v0, p0, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 216
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    .line 225
    iput v1, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 228
    iput-boolean v1, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 232
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 235
    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 254
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 275
    sget-object v0, Landroidx/transition/Styleable;->TRANSITION:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 276
    .local v0, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    .line 277
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, -0x1

    const-string v4, "duration"

    const/4 v5, 0x1

    invoke-static {v0, v2, v4, v5, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    int-to-long v4, v4

    .line 279
    .local v4, "duration":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_84

    .line 280
    invoke-virtual {p0, v4, v5}, Landroidx/transition/Transition;->setDuration(J)Landroidx/transition/Transition;

    .line 282
    :cond_84
    const/4 v8, 0x2

    const-string v9, "startDelay"

    invoke-static {v0, v2, v9, v8, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    int-to-long v8, v3

    .line 284
    .local v8, "startDelay":J
    cmp-long v3, v8, v6

    if-lez v3, :cond_93

    .line 285
    invoke-virtual {p0, v8, v9}, Landroidx/transition/Transition;->setStartDelay(J)Landroidx/transition/Transition;

    .line 287
    :cond_93
    const-string v3, "interpolator"

    invoke-static {v0, v2, v3, v1, v1}, Landroidx/core/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    .line 289
    .local v1, "resId":I
    if-lez v1, :cond_a2

    .line 290
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;

    .line 292
    :cond_a2
    const/4 v3, 0x3

    const-string v6, "matchOrder"

    invoke-static {v0, v2, v6, v3}, Landroidx/core/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "matchOrder":Ljava/lang/String;
    if-eqz v3, :cond_b2

    .line 295
    invoke-static {v3}, Landroidx/transition/Transition;->parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/transition/Transition;->setMatchOrder([I)V

    .line 297
    :cond_b2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return-void
.end method

.method private addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 644
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_23

    .line 645
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 646
    .local v1, "start":Landroidx/transition/TransitionValues;
    iget-object v3, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 647
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v1    # "start":Landroidx/transition/TransitionValues;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 653
    .end local v0    # "i":I
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_24
    invoke-virtual {p2}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 654
    invoke-virtual {p2, v0}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 655
    .local v1, "end":Landroidx/transition/TransitionValues;
    iget-object v3, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 656
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    .end local v1    # "end":Landroidx/transition/TransitionValues;
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 660
    .end local v0    # "i":I
    :cond_45
    return-void
.end method

.method private static addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V
    .registers 12
    .param p0, "transitionValuesMaps"    # Landroidx/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 1531
    iget-object v0, p0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1533
    .local v0, "id":I
    const/4 v1, 0x0

    if-ltz v0, :cond_1f

    .line 1534
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1a

    .line 1536
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1f

    .line 1538
    :cond_1a
    iget-object v2, p0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1541
    :cond_1f
    :goto_1f
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 1542
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 1543
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 1545
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2, v1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 1547
    :cond_33
    iget-object v3, p0, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2, p1}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_7d

    .line 1551
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 1552
    .local v3, "listview":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1553
    invoke-virtual {v3, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v4

    .line 1554
    .local v4, "position":I
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 1555
    .local v5, "itemId":J
    iget-object v7, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_74

    .line 1557
    iget-object v7, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v7, v5, v6}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1558
    .local v7, "alreadyMatched":Landroid/view/View;
    if-eqz v7, :cond_73

    .line 1559
    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1560
    iget-object v8, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v8, v5, v6, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1562
    .end local v7    # "alreadyMatched":Landroid/view/View;
    :cond_73
    goto :goto_7d

    .line 1563
    :cond_74
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1564
    iget-object v1, p0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v5, v6, p1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1568
    .end local v3    # "listview":Landroid/widget/ListView;
    .end local v4    # "position":I
    .end local v5    # "itemId":J
    :cond_7d
    :goto_7d
    return-void
.end method

.method private static alreadyContains([II)Z
    .registers 5
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .line 528
    aget v0, p0, p1

    .line 529
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p1, :cond_e

    .line 530
    aget v2, p0, v1

    if-ne v2, v0, :cond_b

    .line 531
    const/4 v2, 0x1

    return v2

    .line 529
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 534
    .end local v1    # "i":I
    :cond_e
    const/4 v1, 0x0

    return v1
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1598
    if-nez p1, :cond_3

    .line 1599
    return-void

    .line 1601
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1602
    .local v0, "id":I
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1603
    return-void

    .line 1605
    :cond_16
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1606
    return-void

    .line 1608
    :cond_21
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3e

    .line 1609
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1610
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v1, :cond_3e

    .line 1611
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1612
    return-void

    .line 1610
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1616
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_3e
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6b

    .line 1617
    new-instance v1, Landroidx/transition/TransitionValues;

    invoke-direct {v1}, Landroidx/transition/TransitionValues;-><init>()V

    .line 1618
    .local v1, "values":Landroidx/transition/TransitionValues;
    iput-object p1, v1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 1619
    if-eqz p2, :cond_53

    .line 1620
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_56

    .line 1622
    :cond_53
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1624
    :goto_56
    iget-object v2, v1, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1626
    if-eqz p2, :cond_66

    .line 1627
    iget-object v2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_6b

    .line 1629
    :cond_66
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v2, p1, v1}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1632
    .end local v1    # "values":Landroidx/transition/TransitionValues;
    :cond_6b
    :goto_6b
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_ba

    .line 1634
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_7e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 1635
    return-void

    .line 1637
    :cond_7e
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_89

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1638
    return-void

    .line 1640
    :cond_89
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_a6

    .line 1641
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1642
    .local v1, "numTypes":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_92
    if-ge v2, v1, :cond_a6

    .line 1643
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1644
    return-void

    .line 1642
    :cond_a3
    add-int/lit8 v2, v2, 0x1

    goto :goto_92

    .line 1648
    .end local v1    # "numTypes":I
    .end local v2    # "i":I
    :cond_a6
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1649
    .local v1, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_aa
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_ba

    .line 1650
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    .line 1649
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 1653
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_ba
    return-void
.end method

.method private excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .registers 5
    .param p2, "targetId"    # I
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1308
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-lez p2, :cond_15

    .line 1309
    if-eqz p3, :cond_d

    .line 1310
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_15

    .line 1312
    :cond_d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1315
    :cond_15
    :goto_15
    return-object p1
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .registers 3
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1159
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_d

    .line 1160
    if-eqz p2, :cond_9

    .line 1161
    invoke-static {p0, p1}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_d

    .line 1163
    :cond_9
    invoke-static {p0, p1}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1166
    :cond_d
    :goto_d
    return-object p0
.end method

.method private excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .registers 4
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;",
            "Ljava/lang/Class;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1391
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class;>;"
    if-eqz p2, :cond_d

    .line 1392
    if-eqz p3, :cond_9

    .line 1393
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d

    .line 1395
    :cond_9
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1398
    :cond_d
    :goto_d
    return-object p1
.end method

.method private excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .registers 4
    .param p2, "target"    # Landroid/view/View;
    .param p3, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1323
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_d

    .line 1324
    if-eqz p3, :cond_9

    .line 1325
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_d

    .line 1327
    :cond_9
    invoke-static {p1, p2}, Landroidx/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1330
    :cond_d
    :goto_d
    return-object p1
.end method

.method private static getRunningAnimators()Landroidx/collection/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .line 857
    sget-object v0, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/ArrayMap;

    .line 858
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_15

    .line 859
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, v1

    .line 860
    sget-object v1, Landroidx/transition/Transition;->sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 862
    :cond_15
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .registers 3
    .param p0, "match"    # I

    .line 524
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x4

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private static isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z
    .registers 6
    .param p0, "oldValues"    # Landroidx/transition/TransitionValues;
    .param p1, "newValues"    # Landroidx/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 1862
    iget-object v0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1863
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1865
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v0, :cond_12

    if-nez v1, :cond_12

    .line 1867
    const/4 v2, 0x0

    .local v2, "changed":Z
    goto :goto_1f

    .line 1868
    .end local v2    # "changed":Z
    :cond_12
    if-eqz v0, :cond_1e

    if-nez v1, :cond_17

    goto :goto_1e

    .line 1873
    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .restart local v2    # "changed":Z
    goto :goto_1f

    .line 1870
    .end local v2    # "changed":Z
    :cond_1e
    :goto_1e
    const/4 v2, 0x1

    .line 1880
    .restart local v2    # "changed":Z
    :goto_1f
    return v2
.end method

.method private matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 592
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 593
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 594
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 595
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 596
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 597
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 598
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 599
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 600
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 608
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_3d

    .line 544
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 545
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3a

    invoke-virtual {p0, v1}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 546
    invoke-virtual {p2, v1}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionValues;

    .line 547
    .local v2, "end":Landroidx/transition/TransitionValues;
    if-eqz v2, :cond_3a

    iget-object v3, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v3, :cond_3a

    iget-object v3, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 548
    invoke-virtual {p1, v0}, Landroidx/collection/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionValues;

    .line 549
    .local v3, "start":Landroidx/transition/TransitionValues;
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "end":Landroidx/transition/TransitionValues;
    .end local v3    # "start":Landroidx/transition/TransitionValues;
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 554
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method private matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 564
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroidx/collection/LongSparseArray;, "Landroidx/collection/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    .line 565
    .local v0, "numStartIds":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 566
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 567
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 568
    invoke-virtual {p3, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 569
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 570
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 571
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 572
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 573
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 581
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/view/View;",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 618
    .local p1, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    .local p3, "startNames":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 619
    .local v0, "numStartNames":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_4a

    .line 620
    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 621
    .local v2, "startView":Landroid/view/View;
    if-eqz v2, :cond_47

    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 622
    invoke-virtual {p3, v1}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 623
    .local v3, "endView":Landroid/view/View;
    if-eqz v3, :cond_47

    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 624
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/TransitionValues;

    .line 625
    .local v4, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 626
    .local v5, "endValues":Landroidx/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v5, :cond_47

    .line 627
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v6, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {p1, v2}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {p2, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    .end local v2    # "startView":Landroid/view/View;
    .end local v3    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroidx/transition/TransitionValues;
    .end local v5    # "endValues":Landroidx/transition/TransitionValues;
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 635
    .end local v1    # "i":I
    :cond_4a
    return-void
.end method

.method private matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V
    .registers 8
    .param p1, "startValues"    # Landroidx/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroidx/transition/TransitionValuesMaps;

    .line 664
    new-instance v0, Landroidx/collection/ArrayMap;

    iget-object v1, p1, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 665
    .local v0, "unmatchedStart":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    new-instance v1, Landroidx/collection/ArrayMap;

    iget-object v2, p2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-direct {v1, v2}, Landroidx/collection/ArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    .line 667
    .local v1, "unmatchedEnd":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/view/View;Landroidx/transition/TransitionValues;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    iget-object v3, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    array-length v4, v3

    if-ge v2, v4, :cond_42

    .line 668
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3b

    const/4 v4, 0x2

    if-eq v3, v4, :cond_33

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_23

    goto :goto_3f

    .line 681
    :cond_23
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchItemIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V

    goto :goto_3f

    .line 677
    :cond_2b
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchIds(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 679
    goto :goto_3f

    .line 673
    :cond_33
    iget-object v3, p1, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    iget-object v4, p2, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/transition/Transition;->matchNames(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 675
    goto :goto_3f

    .line 670
    :cond_3b
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->matchInstances(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 671
    nop

    .line 667
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 686
    .end local v2    # "i":I
    :cond_42
    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->addUnmatched(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    .line 687
    return-void
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .registers 8
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .line 302
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    new-array v1, v1, [I

    .line 305
    .local v1, "matches":[I
    const/4 v2, 0x0

    .line 306
    .local v2, "index":I
    :goto_e
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 307
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "token":Ljava/lang/String;
    const-string v4, "id"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_29

    .line 309
    const/4 v4, 0x3

    aput v4, v1, v2

    goto :goto_5f

    .line 310
    :cond_29
    const-string v4, "instance"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 311
    aput v5, v1, v2

    goto :goto_5f

    .line 312
    :cond_34
    const-string v4, "name"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 313
    const/4 v4, 0x2

    aput v4, v1, v2

    goto :goto_5f

    .line 314
    :cond_40
    const-string v4, "itemId"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 315
    const/4 v4, 0x4

    aput v4, v1, v2

    goto :goto_5f

    .line 316
    :cond_4c
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 318
    array-length v4, v1

    sub-int/2addr v4, v5

    new-array v4, v4, [I

    .line 319
    .local v4, "smallerMatches":[I
    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    move-object v1, v4

    .line 321
    nop

    .end local v4    # "smallerMatches":[I
    add-int/lit8 v2, v2, -0x1

    .line 322
    nop

    .line 325
    :goto_5f
    nop

    .end local v3    # "token":Ljava/lang/String;
    add-int/2addr v2, v5

    .line 326
    goto :goto_e

    .line 323
    .restart local v3    # "token":Ljava/lang/String;
    :cond_62
    new-instance v4, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown match type in matchOrder: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 327
    .end local v3    # "token":Ljava/lang/String;
    :cond_7e
    return-object v1
.end method

.method private runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/collection/ArrayMap<",
            "Landroid/animation/Animator;",
            "Landroidx/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .line 894
    .local p2, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_d

    .line 896
    new-instance v0, Landroidx/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroidx/transition/Transition$2;-><init>(Landroidx/transition/Transition;Landroidx/collection/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 908
    invoke-virtual {p0, p1}, Landroidx/transition/Transition;->animate(Landroid/animation/Animator;)V

    .line 910
    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroidx/transition/Transition$TransitionListener;

    .line 2033
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2036
    :cond_b
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2037
    return-object p0
.end method

.method public addTarget(I)Landroidx/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I

    .line 1022
    if-eqz p1, :cond_b

    .line 1023
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .line 998
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .registers 3
    .param p1, "targetType"    # Ljava/lang/Class;

    .line 1077
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    .line 1080
    :cond_b
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1047
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    .line 1050
    :cond_b
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 1895
    if-nez p1, :cond_6

    .line 1896
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    goto :goto_3e

    .line 1898
    :cond_6
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 1899
    invoke-virtual {p0}, Landroidx/transition/Transition;->getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1901
    :cond_17
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_26

    .line 1902
    invoke-virtual {p0}, Landroidx/transition/Transition;->getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1904
    :cond_26
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1905
    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1907
    :cond_33
    new-instance v0, Landroidx/transition/Transition$3;

    invoke-direct {v0, p0}, Landroidx/transition/Transition$3;-><init>(Landroidx/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1914
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 1916
    :goto_3e
    return-void
.end method

.method protected cancel()V
    .registers 6

    .line 2008
    iget-object v0, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2009
    .local v0, "numAnimators":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 2010
    iget-object v2, p0, Landroidx/transition/Transition;->mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 2011
    .local v2, "animator":Landroid/animation/Animator;
    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    .line 2009
    .end local v2    # "animator":Landroid/animation/Animator;
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2013
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 2014
    iget-object v1, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2015
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2016
    .local v1, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2017
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    if-ge v3, v2, :cond_3d

    .line 2018
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    .line 2017
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 2021
    .end local v1    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_3d
    return-void
.end method

.method public abstract captureEndValues(Landroidx/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroidx/transition/TransitionValues;)V
    .registers 7
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 2180
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    if-eqz v0, :cond_30

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2181
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v0}, Landroidx/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v0

    .line 2182
    .local v0, "propertyNames":[Ljava/lang/String;
    if-nez v0, :cond_15

    .line 2183
    return-void

    .line 2185
    :cond_15
    const/4 v1, 0x1

    .line 2186
    .local v1, "containsAll":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    array-length v3, v0

    if-ge v2, v3, :cond_29

    .line 2187
    iget-object v3, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2188
    const/4 v1, 0x0

    .line 2189
    goto :goto_29

    .line 2186
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 2192
    .end local v2    # "i":I
    :cond_29
    :goto_29
    if-nez v1, :cond_30

    .line 2193
    iget-object v2, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    invoke-virtual {v2, p1}, Landroidx/transition/TransitionPropagation;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 2196
    .end local v0    # "propertyNames":[Ljava/lang/String;
    .end local v1    # "containsAll":Z
    :cond_30
    return-void
.end method

.method public abstract captureStartValues(Landroidx/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .registers 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .line 1468
    invoke-virtual {p0, p2}, Landroidx/transition/Transition;->clearValues(Z)V

    .line 1469
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_13

    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_28

    :cond_13
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 1470
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_1d
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_2d

    .line 1471
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_2d

    .line 1510
    :cond_28
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;->captureHierarchy(Landroid/view/View;Z)V

    goto/16 :goto_a9

    .line 1472
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_70

    .line 1473
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1474
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1475
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_6d

    .line 1476
    new-instance v3, Landroidx/transition/TransitionValues;

    invoke-direct {v3}, Landroidx/transition/TransitionValues;-><init>()V

    .line 1477
    .local v3, "values":Landroidx/transition/TransitionValues;
    iput-object v2, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 1478
    if-eqz p2, :cond_55

    .line 1479
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_58

    .line 1481
    :cond_55
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1483
    :goto_58
    iget-object v4, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    invoke-virtual {p0, v3}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1485
    if-eqz p2, :cond_68

    .line 1486
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_6d

    .line 1488
    :cond_68
    iget-object v4, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v4, v2, v3}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1472
    .end local v1    # "id":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "values":Landroidx/transition/TransitionValues;
    :cond_6d
    :goto_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1492
    .end local v0    # "i":I
    :cond_70
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_71
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a9

    .line 1493
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1494
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroidx/transition/TransitionValues;

    invoke-direct {v2}, Landroidx/transition/TransitionValues;-><init>()V

    .line 1495
    .local v2, "values":Landroidx/transition/TransitionValues;
    iput-object v1, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 1496
    if-eqz p2, :cond_8e

    .line 1497
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->captureStartValues(Landroidx/transition/TransitionValues;)V

    goto :goto_91

    .line 1499
    :cond_8e
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->captureEndValues(Landroidx/transition/TransitionValues;)V

    .line 1501
    :goto_91
    iget-object v3, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    invoke-virtual {p0, v2}, Landroidx/transition/Transition;->capturePropagationValues(Landroidx/transition/TransitionValues;)V

    .line 1503
    if-eqz p2, :cond_a1

    .line 1504
    iget-object v3, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    goto :goto_a6

    .line 1506
    :cond_a1
    iget-object v3, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-static {v3, v1, v2}, Landroidx/transition/Transition;->addViewValues(Landroidx/transition/TransitionValuesMaps;Landroid/view/View;Landroidx/transition/TransitionValues;)V

    .line 1492
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "values":Landroidx/transition/TransitionValues;
    :goto_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 1512
    .end local v0    # "i":I
    :cond_a9
    :goto_a9
    if-nez p2, :cond_ee

    iget-object v0, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    if-eqz v0, :cond_ee

    .line 1513
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v0

    .line 1514
    .local v0, "numOverrides":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1515
    .local v1, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b9
    if-ge v2, v0, :cond_d1

    .line 1516
    iget-object v3, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    invoke-virtual {v3, v2}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1517
    .local v3, "fromName":Ljava/lang/String;
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v3}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    .end local v3    # "fromName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 1519
    .end local v2    # "i":I
    :cond_d1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_d2
    if-ge v2, v0, :cond_ee

    .line 1520
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1521
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_eb

    .line 1522
    iget-object v4, p0, Landroidx/transition/Transition;->mNameOverrides:Landroidx/collection/ArrayMap;

    invoke-virtual {v4, v2}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1523
    .local v4, "toName":Ljava/lang/String;
    iget-object v5, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v5, v5, Landroidx/transition/TransitionValuesMaps;->mNameValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "toName":Ljava/lang/String;
    :cond_eb
    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    .line 1527
    .end local v0    # "numOverrides":I
    .end local v1    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_ee
    return-void
.end method

.method clearValues(Z)V
    .registers 3
    .param p1, "start"    # Z

    .line 1576
    if-eqz p1, :cond_18

    .line 1577
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1578
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1579
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    goto :goto_2d

    .line 1581
    :cond_18
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->clear()V

    .line 1582
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mIdValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1583
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 1585
    :goto_2d
    return-void
.end method

.method public clone()Landroidx/transition/Transition;
    .registers 4

    .line 2215
    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Transition;

    .line 2216
    .local v1, "clone":Landroidx/transition/Transition;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    .line 2217
    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    .line 2218
    new-instance v2, Landroidx/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroidx/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 2219
    iput-object v0, v1, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 2220
    iput-object v0, v1, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_20} :catch_21

    .line 2221
    return-object v1

    .line 2222
    .end local v1    # "clone":Landroidx/transition/Transition;
    :catch_21
    move-exception v1

    .line 2223
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Landroidx/transition/Transition;->clone()Landroidx/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 28
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroidx/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Landroidx/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .line 707
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v8

    .line 708
    .local v8, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 709
    .local v0, "minStartDelay":J
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v2

    .line 710
    .local v9, "startDelays":Landroid/util/SparseIntArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 711
    .local v10, "startValuesListCount":I
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_19
    if-ge v11, v10, :cond_166

    .line 712
    move-object/from16 v12, p4

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/transition/TransitionValues;

    .line 713
    .local v2, "start":Landroidx/transition/TransitionValues;
    move-object/from16 v13, p5

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/TransitionValues;

    .line 714
    .local v3, "end":Landroidx/transition/TransitionValues;
    if-eqz v2, :cond_38

    iget-object v4, v2, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 715
    const/4 v2, 0x0

    move-object v14, v2

    goto :goto_39

    .line 717
    :cond_38
    move-object v14, v2

    .end local v2    # "start":Landroidx/transition/TransitionValues;
    .local v14, "start":Landroidx/transition/TransitionValues;
    :goto_39
    if-eqz v3, :cond_46

    iget-object v2, v3, Landroidx/transition/TransitionValues;->mTargetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 718
    const/4 v3, 0x0

    move-object v15, v3

    goto :goto_47

    .line 720
    :cond_46
    move-object v15, v3

    .end local v3    # "end":Landroidx/transition/TransitionValues;
    .local v15, "end":Landroidx/transition/TransitionValues;
    :goto_47
    if-nez v14, :cond_51

    if-nez v15, :cond_51

    .line 721
    move/from16 v18, v10

    move/from16 v19, v11

    goto/16 :goto_160

    .line 724
    :cond_51
    if-eqz v14, :cond_5e

    if-eqz v15, :cond_5e

    invoke-virtual {v6, v14, v15}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v2

    if-eqz v2, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 v2, 0x0

    goto :goto_5f

    :cond_5e
    :goto_5e
    const/4 v2, 0x1

    :goto_5f
    move/from16 v16, v2

    .line 725
    .local v16, "isChanged":Z
    if-eqz v16, :cond_15c

    .line 744
    invoke-virtual {v6, v7, v14, v15}, Landroidx/transition/Transition;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    .line 745
    .local v2, "animator":Landroid/animation/Animator;
    if-eqz v2, :cond_155

    .line 748
    const/4 v3, 0x0

    .line 749
    .local v3, "infoValues":Landroidx/transition/TransitionValues;
    if-eqz v15, :cond_10f

    .line 750
    iget-object v4, v15, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 751
    .local v4, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v5

    .line 752
    .local v5, "properties":[Ljava/lang/String;
    if-eqz v4, :cond_103

    if-eqz v5, :cond_103

    move-object/from16 v17, v2

    .end local v2    # "animator":Landroid/animation/Animator;
    .local v17, "animator":Landroid/animation/Animator;
    array-length v2, v5

    if-lez v2, :cond_fe

    .line 753
    new-instance v2, Landroidx/transition/TransitionValues;

    invoke-direct {v2}, Landroidx/transition/TransitionValues;-><init>()V

    move-object v3, v2

    .line 754
    iput-object v4, v3, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 755
    move-object/from16 v2, p3

    move/from16 v18, v10

    .end local v10    # "startValuesListCount":I
    .local v18, "startValuesListCount":I
    iget-object v10, v2, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v10, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/transition/TransitionValues;

    .line 756
    .local v10, "newValues":Landroidx/transition/TransitionValues;
    if-eqz v10, :cond_bb

    .line 757
    const/16 v19, 0x0

    move/from16 v2, v19

    .local v2, "j":I
    :goto_95
    array-length v12, v5

    if-ge v2, v12, :cond_b6

    .line 758
    iget-object v12, v3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v13, v5, v2

    move/from16 v19, v11

    .end local v11    # "i":I
    .local v19, "i":I
    iget-object v11, v10, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v20, v10

    .end local v10    # "newValues":Landroidx/transition/TransitionValues;
    .local v20, "newValues":Landroidx/transition/TransitionValues;
    aget-object v10, v5, v2

    .line 759
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 758
    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move/from16 v11, v19

    move-object/from16 v10, v20

    goto :goto_95

    .end local v19    # "i":I
    .end local v20    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v10    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v11    # "i":I
    :cond_b6
    move-object/from16 v20, v10

    move/from16 v19, v11

    .end local v10    # "newValues":Landroidx/transition/TransitionValues;
    .end local v11    # "i":I
    .restart local v19    # "i":I
    .restart local v20    # "newValues":Landroidx/transition/TransitionValues;
    goto :goto_bf

    .line 756
    .end local v2    # "j":I
    .end local v19    # "i":I
    .end local v20    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v10    # "newValues":Landroidx/transition/TransitionValues;
    .restart local v11    # "i":I
    :cond_bb
    move-object/from16 v20, v10

    move/from16 v19, v11

    .line 762
    .end local v10    # "newValues":Landroidx/transition/TransitionValues;
    .end local v11    # "i":I
    .restart local v19    # "i":I
    .restart local v20    # "newValues":Landroidx/transition/TransitionValues;
    :goto_bf
    invoke-virtual {v8}, Landroidx/collection/ArrayMap;->size()I

    move-result v2

    .line 763
    .local v2, "numExistingAnims":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_c4
    if-ge v10, v2, :cond_f9

    .line 764
    invoke-virtual {v8, v10}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 765
    .local v11, "anim":Landroid/animation/Animator;
    invoke-virtual {v8, v11}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/transition/Transition$AnimationInfo;

    .line 766
    .local v12, "info":Landroidx/transition/Transition$AnimationInfo;
    iget-object v13, v12, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    if-eqz v13, :cond_f2

    iget-object v13, v12, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-ne v13, v4, :cond_f2

    iget-object v13, v12, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    .line 767
    move/from16 v21, v2

    .end local v2    # "numExistingAnims":I
    .local v21, "numExistingAnims":I
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 768
    iget-object v2, v12, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    invoke-virtual {v2, v3}, Landroidx/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 770
    const/4 v2, 0x0

    .line 771
    .end local v17    # "animator":Landroid/animation/Animator;
    .local v2, "animator":Landroid/animation/Animator;
    goto :goto_10b

    .line 766
    .end local v21    # "numExistingAnims":I
    .local v2, "numExistingAnims":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    :cond_f2
    move/from16 v21, v2

    .line 763
    .end local v2    # "numExistingAnims":I
    .end local v11    # "anim":Landroid/animation/Animator;
    .end local v12    # "info":Landroidx/transition/Transition$AnimationInfo;
    .restart local v21    # "numExistingAnims":I
    :cond_f4
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v21

    goto :goto_c4

    .end local v21    # "numExistingAnims":I
    .restart local v2    # "numExistingAnims":I
    :cond_f9
    move/from16 v21, v2

    .end local v2    # "numExistingAnims":I
    .restart local v21    # "numExistingAnims":I
    move-object/from16 v2, v17

    goto :goto_10b

    .line 752
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .end local v20    # "newValues":Landroidx/transition/TransitionValues;
    .end local v21    # "numExistingAnims":I
    .local v10, "startValuesListCount":I
    .local v11, "i":I
    :cond_fe
    move/from16 v18, v10

    move/from16 v19, v11

    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    goto :goto_109

    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .local v2, "animator":Landroid/animation/Animator;
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_103
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .line 776
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v5    # "properties":[Ljava/lang/String;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    :goto_109
    move-object/from16 v2, v17

    .end local v17    # "animator":Landroid/animation/Animator;
    .restart local v2    # "animator":Landroid/animation/Animator;
    :goto_10b
    move-object v10, v2

    move-object v12, v3

    move-object v11, v4

    goto :goto_11b

    .line 777
    .end local v4    # "view":Landroid/view/View;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_10f
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    iget-object v2, v14, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v11, v2

    move-object v12, v3

    move-object/from16 v10, v17

    .line 779
    .end local v3    # "infoValues":Landroidx/transition/TransitionValues;
    .end local v17    # "animator":Landroid/animation/Animator;
    .local v10, "animator":Landroid/animation/Animator;
    .local v11, "view":Landroid/view/View;
    .local v12, "infoValues":Landroidx/transition/TransitionValues;
    :goto_11b
    if-eqz v10, :cond_160

    .line 780
    iget-object v2, v6, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    if-eqz v2, :cond_136

    .line 781
    invoke-virtual {v2, v7, v6, v14, v15}, Landroidx/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J

    move-result-wide v2

    .line 782
    .local v2, "delay":J
    iget-object v4, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v5, v2

    invoke-virtual {v9, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide/from16 v20, v0

    goto :goto_138

    .line 780
    .end local v2    # "delay":J
    :cond_136
    move-wide/from16 v20, v0

    .line 785
    .end local v0    # "minStartDelay":J
    .local v20, "minStartDelay":J
    :goto_138
    new-instance v13, Landroidx/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/transition/Transition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 786
    invoke-static/range {p1 .. p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v4

    move-object v0, v13

    move-object v1, v11

    move-object/from16 v3, p0

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdImpl;Landroidx/transition/TransitionValues;)V

    .line 787
    .local v0, "info":Landroidx/transition/Transition$AnimationInfo;
    invoke-virtual {v8, v10, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v1, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v0, v20

    goto :goto_160

    .line 745
    .end local v12    # "infoValues":Landroidx/transition/TransitionValues;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .end local v20    # "minStartDelay":J
    .local v0, "minStartDelay":J
    .local v2, "animator":Landroid/animation/Animator;
    .local v10, "startValuesListCount":I
    .local v11, "i":I
    :cond_155
    move-object/from16 v17, v2

    move/from16 v18, v10

    move/from16 v19, v11

    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v17    # "animator":Landroid/animation/Animator;
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    goto :goto_160

    .line 725
    .end local v17    # "animator":Landroid/animation/Animator;
    .end local v18    # "startValuesListCount":I
    .end local v19    # "i":I
    .restart local v10    # "startValuesListCount":I
    .restart local v11    # "i":I
    :cond_15c
    move/from16 v18, v10

    move/from16 v19, v11

    .line 711
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .end local v14    # "start":Landroidx/transition/TransitionValues;
    .end local v15    # "end":Landroidx/transition/TransitionValues;
    .end local v16    # "isChanged":Z
    .restart local v18    # "startValuesListCount":I
    .restart local v19    # "i":I
    :cond_160
    :goto_160
    add-int/lit8 v11, v19, 0x1

    move/from16 v10, v18

    .end local v19    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_19

    .end local v18    # "startValuesListCount":I
    .restart local v10    # "startValuesListCount":I
    :cond_166
    move/from16 v18, v10

    move/from16 v19, v11

    .line 793
    .end local v10    # "startValuesListCount":I
    .end local v11    # "i":I
    .restart local v18    # "startValuesListCount":I
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_194

    .line 794
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_171
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_194

    .line 795
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 796
    .local v3, "index":I
    iget-object v4, v6, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 797
    .local v4, "animator":Landroid/animation/Animator;
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-long v10, v5

    sub-long/2addr v10, v0

    invoke-virtual {v4}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 798
    .local v10, "delay":J
    invoke-virtual {v4, v10, v11}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 794
    .end local v3    # "index":I
    .end local v4    # "animator":Landroid/animation/Animator;
    .end local v10    # "delay":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_171

    .line 801
    .end local v2    # "i":I
    :cond_194
    return-void
.end method

.method protected end()V
    .registers 6

    .line 1954
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 1955
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_6c

    .line 1956
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    .line 1957
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1958
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1959
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1960
    .local v2, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    if-ge v3, v2, :cond_2f

    .line 1961
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionEnd(Landroidx/transition/Transition;)V

    .line 1960
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 1964
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v2    # "numListeners":I
    .end local v3    # "i":I
    :cond_2f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    iget-object v2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_4d

    .line 1965
    iget-object v2, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1966
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4a

    .line 1967
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1964
    .end local v2    # "view":Landroid/view/View;
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 1970
    .end local v0    # "i":I
    :cond_4d
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4e
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6a

    .line 1971
    iget-object v2, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v2, v2, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1972
    .restart local v2    # "view":Landroid/view/View;
    if-eqz v2, :cond_67

    .line 1973
    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setHasTransientState(Landroid/view/View;Z)V

    .line 1970
    .end local v2    # "view":Landroid/view/View;
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1976
    .end local v0    # "i":I
    :cond_6a
    iput-boolean v1, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 1978
    :cond_6c
    return-void
.end method

.method public excludeChildren(IZ)Landroidx/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1299
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1300
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroidx/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1269
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1270
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 1382
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1383
    return-object p0
.end method

.method public excludeTarget(IZ)Landroidx/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .line 1217
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeId(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1218
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroidx/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .line 1191
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeView(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    .line 1192
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroidx/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .line 1355
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/transition/Transition;->excludeType(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1356
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroidx/transition/Transition;
    .registers 4
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .line 1243
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroidx/transition/Transition;->excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1244
    return-object p0
.end method

.method forceToEnd(Landroid/view/ViewGroup;)V
    .registers 8
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1987
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1988
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 1989
    .local v1, "numOldAnims":I
    if-eqz p1, :cond_32

    .line 1990
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v2

    .line 1991
    .local v2, "windowId":Landroidx/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_10
    if-ltz v3, :cond_32

    .line 1992
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$AnimationInfo;

    .line 1993
    .local v4, "info":Landroidx/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_2f

    if-eqz v2, :cond_2f

    iget-object v5, v4, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1994
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1995
    .local v5, "anim":Landroid/animation/Animator;
    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 1991
    .end local v4    # "info":Landroidx/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1999
    .end local v2    # "windowId":Landroidx/transition/WindowIdImpl;
    .end local v3    # "i":I
    :cond_32
    return-void
.end method

.method public getDuration()J
    .registers 3

    .line 354
    iget-wide v0, p0, Landroidx/transition/Transition;->mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .registers 2

    .line 2137
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_6

    .line 2138
    const/4 v0, 0x0

    return-object v0

    .line 2140
    :cond_6
    invoke-virtual {v0, p0}, Landroidx/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroidx/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEpicenterCallback()Landroidx/transition/Transition$EpicenterCallback;
    .registers 2

    .line 2124
    iget-object v0, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .line 409
    iget-object v0, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .line 1682
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_9

    .line 1683
    invoke-virtual {v0, p1, p2}, Landroidx/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1685
    :cond_9
    if-eqz p2, :cond_e

    iget-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1686
    .local v0, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :goto_10
    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 1687
    return-object v1

    .line 1689
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1690
    .local v2, "count":I
    const/4 v3, -0x1

    .line 1691
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v2, :cond_2e

    .line 1692
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/TransitionValues;

    .line 1693
    .local v5, "values":Landroidx/transition/TransitionValues;
    if-nez v5, :cond_25

    .line 1694
    return-object v1

    .line 1696
    :cond_25
    iget-object v6, v5, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v6, p1, :cond_2b

    .line 1697
    move v3, v4

    .line 1698
    goto :goto_2e

    .line 1691
    .end local v5    # "values":Landroidx/transition/TransitionValues;
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 1701
    .end local v4    # "i":I
    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    .line 1702
    .local v1, "values":Landroidx/transition/TransitionValues;
    if-ltz v3, :cond_3f

    .line 1703
    if-eqz p2, :cond_36

    iget-object v4, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    goto :goto_38

    :cond_36
    iget-object v4, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1704
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :goto_38
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroidx/transition/TransitionValues;

    .line 1706
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/TransitionValues;>;"
    :cond_3f
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 2241
    iget-object v0, p0, Landroidx/transition/Transition;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPathMotion()Landroidx/transition/PathMotion;
    .registers 2

    .line 2094
    iget-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroidx/transition/TransitionPropagation;
    .registers 2

    .line 2172
    iget-object v0, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .line 381
    iget-wide v0, p0, Landroidx/transition/Transition;->mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1412
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 1456
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1426
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .line 435
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .line 1663
    iget-object v0, p0, Landroidx/transition/Transition;->mParent:Landroidx/transition/TransitionSet;

    if-eqz v0, :cond_9

    .line 1664
    invoke-virtual {v0, p1, p2}, Landroidx/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    return-object v0

    .line 1666
    :cond_9
    if-eqz p2, :cond_e

    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    goto :goto_10

    :cond_e
    iget-object v0, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    .line 1667
    .local v0, "valuesMaps":Landroidx/transition/TransitionValuesMaps;
    :goto_10
    iget-object v1, v0, Landroidx/transition/TransitionValuesMaps;->mViewValues:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/TransitionValues;

    return-object v1
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .registers 9
    .param p1, "startValues"    # Landroidx/transition/TransitionValues;
    .param p2, "endValues"    # Landroidx/transition/TransitionValues;

    .line 1836
    const/4 v0, 0x0

    .line 1839
    .local v0, "valuesChanged":Z
    if-eqz p1, :cond_3c

    if-eqz p2, :cond_3c

    .line 1840
    invoke-virtual {p0}, Landroidx/transition/Transition;->getTransitionProperties()[Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, "properties":[Ljava/lang/String;
    if-eqz v1, :cond_1d

    .line 1842
    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_1c

    aget-object v4, v1, v3

    .line 1843
    .local v4, "property":Ljava/lang/String;
    invoke-static {p1, p2, v4}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1844
    const/4 v0, 0x1

    .line 1845
    goto :goto_1c

    .line 1842
    .end local v4    # "property":Ljava/lang/String;
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_1c
    :goto_1c
    goto :goto_3c

    .line 1849
    :cond_1d
    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1850
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, Landroidx/transition/Transition;->isValueChanged(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1851
    const/4 v0, 0x1

    .line 1852
    goto :goto_3c

    .line 1854
    .end local v3    # "key":Ljava/lang/String;
    :cond_3b
    goto :goto_27

    .line 1857
    .end local v1    # "properties":[Ljava/lang/String;
    :cond_3c
    :goto_3c
    return v0
.end method

.method isValidTarget(Landroid/view/View;)Z
    .registers 8
    .param p1, "target"    # Landroid/view/View;

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 815
    .local v0, "targetId":I
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIdExcludes:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 816
    return v2

    .line 818
    :cond_14
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_1f

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 819
    return v2

    .line 821
    :cond_1f
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    .line 822
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 823
    .local v1, "numTypes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v1, :cond_3c

    .line 824
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 825
    .local v4, "type":Ljava/lang/Class;
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 826
    return v2

    .line 823
    .end local v4    # "type":Ljava/lang/Class;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 830
    .end local v1    # "numTypes":I
    .end local v3    # "i":I
    :cond_3c
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_53

    .line 831
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 832
    return v2

    .line 835
    :cond_53
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_79

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_79

    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_6e

    .line 836
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    :cond_6e
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_78

    .line 837
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 838
    :cond_78
    return v3

    .line 840
    :cond_79
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8e

    goto :goto_bd

    .line 843
    :cond_8e
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_9d

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 844
    return v3

    .line 846
    :cond_9d
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v1, :cond_bc

    .line 847
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a2
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_bc

    .line 848
    iget-object v4, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 849
    return v3

    .line 847
    :cond_b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_a2

    .line 853
    .end local v1    # "i":I
    :cond_bc
    return v2

    .line 841
    :cond_bd
    :goto_bd
    return v3
.end method

.method public pause(Landroid/view/View;)V
    .registers 9
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1718
    iget-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    if-nez v0, :cond_5a

    .line 1719
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1720
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 1721
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v2

    .line 1722
    .local v2, "windowId":Landroidx/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_12
    if-ltz v3, :cond_32

    .line 1723
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$AnimationInfo;

    .line 1724
    .local v4, "info":Landroidx/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_2f

    iget-object v5, v4, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1725
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1726
    .local v5, "anim":Landroid/animation/Animator;
    invoke-static {v5}, Landroidx/transition/AnimatorUtils;->pause(Landroid/animation/Animator;)V

    .line 1722
    .end local v4    # "info":Landroidx/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_12

    .line 1729
    .end local v3    # "i":I
    :cond_32
    iget-object v3, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_57

    .line 1730
    iget-object v3, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1731
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1732
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1733
    .local v4, "numListeners":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_49
    if-ge v5, v4, :cond_57

    .line 1734
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    .line 1733
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 1737
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v4    # "numListeners":I
    .end local v5    # "i":I
    :cond_57
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 1739
    .end local v0    # "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    .end local v2    # "windowId":Landroidx/transition/WindowIdImpl;
    :cond_5a
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .registers 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 1781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    .line 1783
    iget-object v0, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v1, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    invoke-direct {p0, v0, v1}, Landroidx/transition/Transition;->matchStartAndEnd(Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;)V

    .line 1785
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1786
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 1787
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v2

    .line 1788
    .local v2, "windowId":Landroidx/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_23
    if-ltz v3, :cond_75

    .line 1789
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 1790
    .local v4, "anim":Landroid/animation/Animator;
    if-eqz v4, :cond_72

    .line 1791
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/transition/Transition$AnimationInfo;

    .line 1792
    .local v5, "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    if-eqz v5, :cond_72

    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v6, :cond_72

    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    .line 1793
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 1794
    iget-object v6, v5, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    .line 1795
    .local v6, "oldValues":Landroidx/transition/TransitionValues;
    iget-object v7, v5, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    .line 1796
    .local v7, "oldView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroidx/transition/Transition;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v9

    .line 1797
    .local v9, "startValues":Landroidx/transition/TransitionValues;
    invoke-virtual {p0, v7, v8}, Landroidx/transition/Transition;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v10

    .line 1798
    .local v10, "endValues":Landroidx/transition/TransitionValues;
    if-nez v9, :cond_52

    if-eqz v10, :cond_5b

    :cond_52
    iget-object v11, v5, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    .line 1799
    invoke-virtual {v11, v6, v10}, Landroidx/transition/Transition;->isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z

    move-result v11

    if-eqz v11, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v8, 0x0

    .line 1800
    .local v8, "cancel":Z
    :goto_5c
    if-eqz v8, :cond_72

    .line 1801
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v11

    if-nez v11, :cond_6f

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v11

    if-eqz v11, :cond_6b

    goto :goto_6f

    .line 1810
    :cond_6b
    invoke-virtual {v0, v4}, Landroidx/collection/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 1805
    :cond_6f
    :goto_6f
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 1788
    .end local v4    # "anim":Landroid/animation/Animator;
    .end local v5    # "oldInfo":Landroidx/transition/Transition$AnimationInfo;
    .end local v6    # "oldValues":Landroidx/transition/TransitionValues;
    .end local v7    # "oldView":Landroid/view/View;
    .end local v8    # "cancel":Z
    .end local v9    # "startValues":Landroidx/transition/TransitionValues;
    .end local v10    # "endValues":Landroidx/transition/TransitionValues;
    :cond_72
    :goto_72
    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 1817
    .end local v3    # "i":I
    :cond_75
    iget-object v6, p0, Landroidx/transition/Transition;->mStartValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v7, p0, Landroidx/transition/Transition;->mEndValues:Landroidx/transition/TransitionValuesMaps;

    iget-object v8, p0, Landroidx/transition/Transition;->mStartValuesList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/transition/Transition;->mEndValuesList:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/transition/Transition;->createAnimators(Landroid/view/ViewGroup;Landroidx/transition/TransitionValuesMaps;Landroidx/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1818
    invoke-virtual {p0}, Landroidx/transition/Transition;->runAnimators()V

    .line 1819
    return-void
.end method

.method public removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroidx/transition/Transition$TransitionListener;

    .line 2049
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 2050
    return-object p0

    .line 2052
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2053
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 2054
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 2056
    :cond_13
    return-object p0
.end method

.method public removeTarget(I)Landroidx/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I

    .line 1112
    if-eqz p1, :cond_b

    .line 1113
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1115
    :cond_b
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroidx/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .line 1096
    iget-object v0, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1097
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroidx/transition/Transition;
    .registers 3
    .param p1, "target"    # Ljava/lang/Class;

    .line 1148
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1149
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1151
    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroidx/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .line 1130
    iget-object v0, p0, Landroidx/transition/Transition;->mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 1131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1133
    :cond_7
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 9
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 1750
    iget-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    if-eqz v0, :cond_5e

    .line 1751
    iget-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    if-nez v0, :cond_5b

    .line 1752
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 1753
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->size()I

    move-result v1

    .line 1754
    .local v1, "numOldAnims":I
    invoke-static {p1}, Landroidx/transition/ViewUtils;->getWindowId(Landroid/view/View;)Landroidx/transition/WindowIdImpl;

    move-result-object v2

    .line 1755
    .local v2, "windowId":Landroidx/transition/WindowIdImpl;
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_16
    if-ltz v3, :cond_36

    .line 1756
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/transition/Transition$AnimationInfo;

    .line 1757
    .local v4, "info":Landroidx/transition/Transition$AnimationInfo;
    iget-object v5, v4, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    if-eqz v5, :cond_33

    iget-object v5, v4, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1758
    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Animator;

    .line 1759
    .local v5, "anim":Landroid/animation/Animator;
    invoke-static {v5}, Landroidx/transition/AnimatorUtils;->resume(Landroid/animation/Animator;)V

    .line 1755
    .end local v4    # "info":Landroidx/transition/Transition$AnimationInfo;
    .end local v5    # "anim":Landroid/animation/Animator;
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 1762
    .end local v3    # "i":I
    :cond_36
    iget-object v3, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5b

    .line 1763
    iget-object v3, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1764
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1765
    .local v3, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1766
    .local v4, "numListeners":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4d
    if-ge v5, v4, :cond_5b

    .line 1767
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v6, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    .line 1766
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 1771
    .end local v0    # "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    .end local v1    # "numOldAnims":I
    .end local v2    # "windowId":Landroidx/transition/WindowIdImpl;
    .end local v3    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v4    # "numListeners":I
    .end local v5    # "i":I
    :cond_5b
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/Transition;->mPaused:Z

    .line 1773
    :cond_5e
    return-void
.end method

.method protected runAnimators()V
    .registers 5

    .line 876
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 877
    invoke-static {}, Landroidx/transition/Transition;->getRunningAnimators()Landroidx/collection/ArrayMap;

    move-result-object v0

    .line 879
    .local v0, "runningAnimators":Landroidx/collection/ArrayMap;, "Landroidx/collection/ArrayMap<Landroid/animation/Animator;Landroidx/transition/Transition$AnimationInfo;>;"
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 883
    .local v2, "anim":Landroid/animation/Animator;
    invoke-virtual {v0, v2}, Landroidx/collection/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 884
    invoke-virtual {p0}, Landroidx/transition/Transition;->start()V

    .line 885
    invoke-direct {p0, v2, v0}, Landroidx/transition/Transition;->runAnimator(Landroid/animation/Animator;Landroidx/collection/ArrayMap;)V

    .line 887
    .end local v2    # "anim":Landroid/animation/Animator;
    :cond_25
    goto :goto_d

    .line 888
    :cond_26
    iget-object v1, p0, Landroidx/transition/Transition;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 889
    invoke-virtual {p0}, Landroidx/transition/Transition;->end()V

    .line 890
    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 2
    .param p1, "canRemoveViews"    # Z

    .line 2204
    iput-boolean p1, p0, Landroidx/transition/Transition;->mCanRemoveViews:Z

    .line 2205
    return-void
.end method

.method public setDuration(J)Landroidx/transition/Transition;
    .registers 3
    .param p1, "duration"    # J

    .line 341
    iput-wide p1, p0, Landroidx/transition/Transition;->mDuration:J

    .line 342
    return-object p0
.end method

.method public setEpicenterCallback(Landroidx/transition/Transition$EpicenterCallback;)V
    .registers 2
    .param p1, "epicenterCallback"    # Landroidx/transition/Transition$EpicenterCallback;

    .line 2109
    iput-object p1, p0, Landroidx/transition/Transition;->mEpicenterCallback:Landroidx/transition/Transition$EpicenterCallback;

    .line 2110
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/Transition;
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .line 395
    iput-object p1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 396
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .registers 6
    .param p1, "matches"    # [I

    .line 507
    if-eqz p1, :cond_34

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_34

    .line 510
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v1, p1

    if-ge v0, v1, :cond_2b

    .line 511
    aget v1, p1, v0

    .line 512
    .local v1, "match":I
    invoke-static {v1}, Landroidx/transition/Transition;->isValidMatch(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 515
    invoke-static {p1, v0}, Landroidx/transition/Transition;->alreadyContains([II)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 510
    .end local v1    # "match":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 516
    .restart local v1    # "match":I
    :cond_1b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    :cond_23
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    .end local v0    # "i":I
    .end local v1    # "match":I
    :cond_2b
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    goto :goto_38

    .line 508
    :cond_34
    :goto_34
    sget-object v0, Landroidx/transition/Transition;->DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, Landroidx/transition/Transition;->mMatchOrder:[I

    .line 521
    :goto_38
    return-void
.end method

.method public setPathMotion(Landroidx/transition/PathMotion;)V
    .registers 3
    .param p1, "pathMotion"    # Landroidx/transition/PathMotion;

    .line 2076
    if-nez p1, :cond_7

    .line 2077
    sget-object v0, Landroidx/transition/Transition;->STRAIGHT_PATH_MOTION:Landroidx/transition/PathMotion;

    iput-object v0, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    goto :goto_9

    .line 2079
    :cond_7
    iput-object p1, p0, Landroidx/transition/Transition;->mPathMotion:Landroidx/transition/PathMotion;

    .line 2081
    :goto_9
    return-void
.end method

.method public setPropagation(Landroidx/transition/TransitionPropagation;)V
    .registers 2
    .param p1, "transitionPropagation"    # Landroidx/transition/TransitionPropagation;

    .line 2155
    iput-object p1, p0, Landroidx/transition/Transition;->mPropagation:Landroidx/transition/TransitionPropagation;

    .line 2156
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroidx/transition/Transition;
    .registers 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 2199
    iput-object p1, p0, Landroidx/transition/Transition;->mSceneRoot:Landroid/view/ViewGroup;

    .line 2200
    return-object p0
.end method

.method public setStartDelay(J)Landroidx/transition/Transition;
    .registers 3
    .param p1, "startDelay"    # J

    .line 368
    iput-wide p1, p0, Landroidx/transition/Transition;->mStartDelay:J

    .line 369
    return-object p0
.end method

.method protected start()V
    .registers 5

    .line 1927
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    if-nez v0, :cond_2c

    .line 1928
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 1929
    iget-object v0, p0, Landroidx/transition/Transition;->mListeners:Ljava/util/ArrayList;

    .line 1930
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1931
    .local v0, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1932
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    if-ge v2, v1, :cond_29

    .line 1933
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroidx/transition/Transition$TransitionListener;->onTransitionStart(Landroidx/transition/Transition;)V

    .line 1932
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 1936
    .end local v0    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/transition/Transition$TransitionListener;>;"
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/Transition;->mEnded:Z

    .line 1938
    :cond_2c
    iget v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/transition/Transition;->mNumInstances:I

    .line 1939
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2209
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/transition/Transition;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "indent"    # Ljava/lang/String;

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2246
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2247
    .local v0, "result":Ljava/lang/String;
    iget-wide v1, p0, Landroidx/transition/Transition;->mDuration:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-string v2, ") "

    if-eqz v1, :cond_4f

    .line 2248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "dur("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Landroidx/transition/Transition;->mDuration:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2250
    :cond_4f
    iget-wide v5, p0, Landroidx/transition/Transition;->mStartDelay:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_6e

    .line 2251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "dly("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/transition/Transition;->mStartDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2253
    :cond_6e
    iget-object v1, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v1, :cond_8b

    .line 2254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "interp("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/transition/Transition;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2256
    :cond_8b
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_9b

    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_133

    .line 2257
    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tgts("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2258
    iget-object v1, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, ", "

    if-lez v1, :cond_e8

    .line 2259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b7
    iget-object v3, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e8

    .line 2260
    if-lez v1, :cond_d0

    .line 2261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2263
    :cond_d0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/transition/Transition;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2259
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 2266
    .end local v1    # "i":I
    :cond_e8
    iget-object v1, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_122

    .line 2267
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f1
    iget-object v3, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_122

    .line 2268
    if-lez v1, :cond_10a

    .line 2269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2271
    :cond_10a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/transition/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2267
    add-int/lit8 v1, v1, 0x1

    goto :goto_f1

    .line 2274
    .end local v1    # "i":I
    :cond_122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2276
    :cond_133
    return-object v0
.end method
