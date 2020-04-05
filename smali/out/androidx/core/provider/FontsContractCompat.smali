.class public Landroidx/core/provider/FontsContractCompat;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/provider/FontsContractCompat$FontRequestCallback;,
        Landroidx/core/provider/FontsContractCompat$FontFamilyResult;,
        Landroidx/core/provider/FontsContractCompat$FontInfo;,
        Landroidx/core/provider/FontsContractCompat$TypefaceResult;,
        Landroidx/core/provider/FontsContractCompat$Columns;
    }
.end annotation


# static fields
.field private static final BACKGROUND_THREAD_KEEP_ALIVE_DURATION_MS:I = 0x2710

.field public static final PARCEL_FONT_RESULTS:Ljava/lang/String; = "font_results"

.field static final RESULT_CODE_PROVIDER_NOT_FOUND:I = -0x1

.field static final RESULT_CODE_WRONG_CERTIFICATES:I = -0x2

.field private static final sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;

.field static final sPendingReplies:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<",
            "Landroidx/core/provider/FontsContractCompat$TypefaceResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field static final sTypefaceCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 172
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    .line 175
    new-instance v0, Landroidx/core/provider/SelfDestructiveThread;

    const-string v1, "fonts"

    const/16 v2, 0xa

    const/16 v3, 0x2710

    invoke-direct {v0, v1, v2, v3}, Landroidx/core/provider/SelfDestructiveThread;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    .line 204
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    .line 784
    new-instance v0, Landroidx/core/provider/FontsContractCompat$5;

    invoke-direct {v0}, Landroidx/core/provider/FontsContractCompat$5;-><init>()V

    sput-object v0, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;)Landroid/graphics/Typeface;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 670
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .registers 4
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v0, "shas":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_15

    .line 815
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 817
    .end local v1    # "i":I
    :cond_15
    return-object v0
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 801
    .local p0, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 802
    return v2

    .line 804
    :cond_c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 805
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_26

    .line 806
    return v2

    .line 804
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 809
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "request"    # Landroidx/core/provider/FontRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 727
    nop

    .line 728
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 727
    invoke-static {v0, p2, v1}, Landroidx/core/provider/FontsContractCompat;->getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 729
    .local v0, "providerInfo":Landroid/content/pm/ProviderInfo;
    if-nez v0, :cond_17

    .line 730
    new-instance v1, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    return-object v1

    .line 733
    :cond_17
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v1, p1}, Landroidx/core/provider/FontsContractCompat;->getFontFromProvider(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v1

    .line 735
    .local v1, "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    new-instance v2, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    return-object v2
.end method

.method private static getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;
    .registers 4
    .param p0, "request"    # Landroidx/core/provider/FontRequest;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/provider/FontRequest;",
            "Landroid/content/res/Resources;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 778
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 780
    :cond_b
    invoke-virtual {p0}, Landroidx/core/provider/FontRequest;->getCertificatesArrayResId()I

    move-result v0

    .line 781
    .local v0, "resourceId":I
    invoke-static {p1, v0}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getFontFromProvider(Landroid/content/Context;Landroidx/core/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .registers 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 824
    move-object/from16 v1, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 825
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/FontsContractCompat$FontInfo;>;"
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 826
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 828
    .local v11, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 829
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 830
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 831
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 832
    .local v3, "fileBaseUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 834
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-le v0, v4, :cond_65

    .line 835
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v15, "_id"

    const-string v16, "file_id"

    const-string v17, "font_ttc_index"

    const-string v18, "font_variation_settings"

    const-string v19, "font_weight"

    const-string v20, "font_italic"

    const-string v21, "result_code"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "query = ?"

    new-array v8, v13, [Ljava/lang/String;

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    const/4 v9, 0x0

    .line 835
    move-object v5, v11

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .end local v12    # "cursor":Landroid/database/Cursor;
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_8c

    .line 842
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_65
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v15, "_id"

    const-string v16, "file_id"

    const-string v17, "font_ttc_index"

    const-string v18, "font_variation_settings"

    const-string v19, "font_weight"

    const-string v20, "font_italic"

    const-string v21, "result_code"

    filled-new-array/range {v15 .. v21}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "query = ?"

    new-array v8, v13, [Ljava/lang/String;

    .line 846
    invoke-virtual/range {p1 .. p1}, Landroidx/core/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v14

    const/4 v9, 0x0

    .line 842
    move-object v5, v11

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v12, v0

    .line 848
    :goto_8c
    if-eqz v12, :cond_11b

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_11b

    .line 849
    const-string v0, "result_code"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 850
    .local v0, "resultCodeColumnIndex":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 851
    const-string v4, "_id"

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 852
    .local v4, "idColumnIndex":I
    const-string v5, "file_id"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 853
    .local v5, "fileIdColumnIndex":I
    const-string v6, "font_ttc_index"

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 854
    .local v6, "ttcIndexColumnIndex":I
    const-string v7, "font_weight"

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 855
    .local v7, "weightColumnIndex":I
    const-string v8, "font_italic"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 856
    .local v8, "italicColumnIndex":I
    :goto_be
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_11b

    .line 857
    const/4 v9, -0x1

    if-eq v0, v9, :cond_ce

    .line 858
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v20, v10

    goto :goto_d0

    :cond_ce
    move/from16 v20, v14

    .line 859
    .local v20, "resultCode":I
    :goto_d0
    if-eq v6, v9, :cond_d9

    .line 860
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v17, v10

    goto :goto_db

    :cond_d9
    move/from16 v17, v14

    .line 862
    .local v17, "ttcIndex":I
    :goto_db
    if-ne v5, v9, :cond_ec

    .line 863
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v18, v15

    .line 864
    .local v18, "id":J
    move-wide/from16 v14, v18

    .end local v18    # "id":J
    .local v14, "id":J
    invoke-static {v11, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v14, v16

    .line 865
    .local v14, "fileUri":Landroid/net/Uri;
    goto :goto_f6

    .line 866
    .end local v14    # "fileUri":Landroid/net/Uri;
    :cond_ec
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 867
    .local v14, "id":J
    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v14, v16

    .line 870
    .local v14, "fileUri":Landroid/net/Uri;
    :goto_f6
    if-eq v7, v9, :cond_fd

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    goto :goto_ff

    :cond_fd
    const/16 v15, 0x190

    :goto_ff
    move/from16 v18, v15

    .line 871
    .local v18, "weight":I
    if-eq v8, v9, :cond_10c

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v13, :cond_10c

    move/from16 v19, v13

    goto :goto_10e

    :cond_10c
    const/16 v19, 0x0

    .line 873
    .local v19, "italic":Z
    :goto_10e
    new-instance v9, Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-object v15, v9

    move-object/from16 v16, v14

    invoke-direct/range {v15 .. v20}, Landroidx/core/provider/FontsContractCompat$FontInfo;-><init>(Landroid/net/Uri;IIZI)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_119
    .catchall {:try_start_33 .. :try_end_119} :catchall_12a

    .line 874
    const/4 v14, 0x0

    .end local v14    # "fileUri":Landroid/net/Uri;
    .end local v17    # "ttcIndex":I
    .end local v18    # "weight":I
    .end local v19    # "italic":Z
    .end local v20    # "resultCode":I
    goto :goto_be

    .line 877
    .end local v0    # "resultCodeColumnIndex":I
    .end local v4    # "idColumnIndex":I
    .end local v5    # "fileIdColumnIndex":I
    .end local v6    # "ttcIndexColumnIndex":I
    .end local v7    # "weightColumnIndex":I
    .end local v8    # "italicColumnIndex":I
    :cond_11b
    if-eqz v12, :cond_120

    .line 878
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 881
    :cond_120
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    return-object v0

    .line 877
    :catchall_12a
    move-exception v0

    if-eqz v12, :cond_130

    .line 878
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_130
    throw v0
.end method

.method static getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "style"    # I

    .line 184
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0, p1}, Landroidx/core/provider/FontsContractCompat;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    move-result-object v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_2e

    .line 187
    .local v1, "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    nop

    .line 188
    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v2

    const/4 v3, -0x3

    if-nez v2, :cond_1f

    .line 189
    nop

    .line 190
    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getFonts()[Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v2

    .line 189
    invoke-static {p0, v0, v2, p2}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 191
    .local v0, "typeface":Landroid/graphics/Typeface;
    new-instance v2, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    if-eqz v0, :cond_1b

    const/4 v3, 0x0

    :cond_1b
    invoke-direct {v2, v0, v3}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    return-object v2

    .line 195
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    :cond_1f
    invoke-virtual {v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->getStatusCode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_27

    const/4 v3, -0x2

    :cond_27
    move v2, v3

    .line 198
    .local v2, "resultCode":I
    new-instance v3, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    invoke-direct {v3, v0, v2}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    return-object v3

    .line 185
    .end local v1    # "result":Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .end local v2    # "resultCode":I
    :catch_2e
    move-exception v1

    .line 186
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Landroidx/core/provider/FontsContractCompat$TypefaceResult;-><init>(Landroid/graphics/Typeface;I)V

    return-object v2
.end method

.method public static getFontSync(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "fontCallback"    # Landroidx/core/content/res/ResourcesCompat$FontCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "isBlockingFetch"    # Z
    .param p5, "timeout"    # I
    .param p6, "style"    # I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v1, v0}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    .line 234
    .local v1, "cached":Landroid/graphics/Typeface;
    if-eqz v1, :cond_28

    .line 235
    if-eqz p2, :cond_27

    .line 236
    invoke-virtual {p2, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrieved(Landroid/graphics/Typeface;)V

    .line 238
    :cond_27
    return-object v1

    .line 241
    :cond_28
    if-eqz p4, :cond_45

    const/4 v2, -0x1

    if-ne p5, v2, :cond_45

    .line 243
    invoke-static {p0, p1, p6}, Landroidx/core/provider/FontsContractCompat;->getFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    move-result-object v2

    .line 244
    .local v2, "typefaceResult":Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    if-eqz p2, :cond_42

    .line 245
    iget v3, v2, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    if-nez v3, :cond_3d

    .line 246
    iget-object v3, v2, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p2, v3, p3}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_42

    .line 248
    :cond_3d
    iget v3, v2, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mResult:I

    invoke-virtual {p2, v3, p3}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 251
    :cond_42
    :goto_42
    iget-object v3, v2, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    return-object v3

    .line 254
    .end local v2    # "typefaceResult":Landroidx/core/provider/FontsContractCompat$TypefaceResult;
    :cond_45
    new-instance v2, Landroidx/core/provider/FontsContractCompat$1;

    invoke-direct {v2, p0, p1, p6, v0}, Landroidx/core/provider/FontsContractCompat$1;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;ILjava/lang/String;)V

    .line 265
    .local v2, "fetcher":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;"
    const/4 v3, 0x0

    if-eqz p4, :cond_5a

    .line 267
    :try_start_4d
    sget-object v4, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    invoke-virtual {v4, v2, p5}, Landroidx/core/provider/SelfDestructiveThread;->postAndWait(Ljava/util/concurrent/Callable;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/provider/FontsContractCompat$TypefaceResult;

    iget-object v3, v4, Landroidx/core/provider/FontsContractCompat$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_57} :catch_58

    return-object v3

    .line 268
    :catch_58
    move-exception v4

    .line 269
    .local v4, "e":Ljava/lang/InterruptedException;
    return-object v3

    .line 272
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_5a
    if-nez p2, :cond_5e

    move-object v4, v3

    goto :goto_63

    :cond_5e
    new-instance v4, Landroidx/core/provider/FontsContractCompat$2;

    invoke-direct {v4, p2, p3}, Landroidx/core/provider/FontsContractCompat$2;-><init>(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;)V

    .line 287
    .local v4, "reply":Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;, "Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;"
    :goto_63
    sget-object v5, Landroidx/core/provider/FontsContractCompat;->sLock:Ljava/lang/Object;

    monitor-enter v5

    .line 288
    :try_start_66
    sget-object v6, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6, v0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 289
    .local v6, "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    if-eqz v6, :cond_77

    .line 292
    if-eqz v4, :cond_75

    .line 293
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_75
    monitor-exit v5

    return-object v3

    .line 297
    :cond_77
    if-eqz v4, :cond_87

    .line 298
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v7

    .line 299
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v7, Landroidx/core/provider/FontsContractCompat;->sPendingReplies:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v7, v0, v6}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v6    # "pendingReplies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/provider/SelfDestructiveThread$ReplyCallback<Landroidx/core/provider/FontsContractCompat$TypefaceResult;>;>;"
    :cond_87
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_66 .. :try_end_88} :catchall_93

    .line 303
    sget-object v5, Landroidx/core/provider/FontsContractCompat;->sBackgroundThread:Landroidx/core/provider/SelfDestructiveThread;

    new-instance v6, Landroidx/core/provider/FontsContractCompat$3;

    invoke-direct {v6, v0}, Landroidx/core/provider/FontsContractCompat$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Landroidx/core/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Landroidx/core/provider/SelfDestructiveThread$ReplyCallback;)V

    .line 319
    return-object v3

    .line 302
    :catchall_93
    move-exception v3

    :try_start_94
    monitor-exit v5
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v3
.end method

.method public static getProvider(Landroid/content/pm/PackageManager;Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .registers 11
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 744
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "providerAuthority":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 746
    .local v1, "info":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_74

    .line 751
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 760
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 762
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3}, Landroidx/core/provider/FontsContractCompat;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v3

    .line 763
    .local v3, "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v4, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 764
    invoke-static {p1, p2}, Landroidx/core/provider/FontsContractCompat;->getCertificates(Landroidx/core/provider/FontRequest;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v4

    .line 765
    .local v4, "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4f

    .line 767
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 768
    .local v6, "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    sget-object v7, Landroidx/core/provider/FontsContractCompat;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 769
    invoke-static {v3, v6}, Landroidx/core/provider/FontsContractCompat;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 770
    return-object v1

    .line 765
    .end local v6    # "requestSignatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 773
    .end local v5    # "i":I
    :cond_4f
    const/4 v5, 0x0

    return-object v5

    .line 752
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v4    # "requestCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_51
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found content provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but package was not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {p1}, Landroidx/core/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 747
    :cond_74
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package found for authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static prepareFontData(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroidx/core/provider/FontsContractCompat$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 691
    .local v0, "out":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/nio/ByteBuffer;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_27

    aget-object v3, p1, v2

    .line 692
    .local v3, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getResultCode()I

    move-result v4

    if-eqz v4, :cond_12

    .line 693
    goto :goto_24

    .line 696
    :cond_12
    invoke-virtual {v3}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 697
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 698
    goto :goto_24

    .line 701
    :cond_1d
    invoke-static {p0, p2, v4}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/net/Uri;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 702
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .end local v3    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 704
    :cond_27
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static requestFont(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "callback"    # Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 531
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroidx/core/provider/FontsContractCompat;->requestFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V

    .line 532
    return-void
.end method

.method private static requestFontInternal(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;Landroid/os/Handler;)V
    .registers 6
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "request"    # Landroidx/core/provider/FontRequest;
    .param p2, "callback"    # Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 540
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 541
    .local v0, "callerThreadHandler":Landroid/os/Handler;
    new-instance v1, Landroidx/core/provider/FontsContractCompat$4;

    invoke-direct {v1, p0, p1, v0, p2}, Landroidx/core/provider/FontsContractCompat$4;-><init>(Landroid/content/Context;Landroidx/core/provider/FontRequest;Landroid/os/Handler;Landroidx/core/provider/FontsContractCompat$FontRequestCallback;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    return-void
.end method

.method public static resetCache()V
    .registers 1

    .line 223
    sget-object v0, Landroidx/core/provider/FontsContractCompat;->sTypefaceCache:Landroidx/collection/LruCache;

    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 224
    return-void
.end method
