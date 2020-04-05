.class Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;
.super Ljava/lang/Object;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private doAfterTextChanged:Ljava/lang/reflect/Method;

.field private doBeforeTextChanged:Ljava/lang/reflect/Method;

.field private ensureImeVisible:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 7

    .line 2029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2031
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_5
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "doBeforeTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2032
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    .line 2033
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_16} :catch_17

    .line 2036
    goto :goto_18

    .line 2034
    :catch_17
    move-exception v2

    .line 2038
    :goto_18
    :try_start_18
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "doAfterTextChanged"

    new-array v4, v0, [Ljava/lang/Class;

    .line 2039
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    .line 2040
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_29
    .catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_29} :catch_2a

    .line 2043
    goto :goto_2b

    .line 2041
    :catch_2a
    move-exception v2

    .line 2045
    :goto_2b
    :try_start_2b
    const-class v2, Landroid/widget/AutoCompleteTextView;

    const-string v3, "ensureImeVisible"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 2046
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    .line 2047
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_40
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2b .. :try_end_40} :catch_41

    .line 2050
    goto :goto_42

    .line 2048
    :catch_41
    move-exception v0

    .line 2051
    :goto_42
    return-void
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .line 2063
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    .line 2065
    const/4 v1, 0x0

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2067
    goto :goto_c

    .line 2066
    :catch_b
    move-exception v0

    .line 2069
    :cond_c
    :goto_c
    return-void
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .line 2054
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_c

    .line 2056
    const/4 v1, 0x0

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_b

    .line 2058
    goto :goto_c

    .line 2057
    :catch_b
    move-exception v0

    .line 2060
    :cond_c
    :goto_c
    return-void
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;
    .param p2, "visible"    # Z

    .line 2072
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13

    .line 2074
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    .line 2076
    goto :goto_13

    .line 2075
    :catch_12
    move-exception v0

    .line 2078
    :cond_13
    :goto_13
    return-void
.end method
