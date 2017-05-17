.class public Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;
.super Landroid/content/ContentProvider;
.source "ConversationsSettingsProvider.java"


# static fields
.field private static final SETTINGS_COLUMN_NAMES:[Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mMmsImageMaxLargerDimension:I

.field private mMmsImageMaxLargerDimensionDefaultValue:I

.field private mMmsImageMaxSmallerDimension:I

.field private mMmsImageMaxSmallerDimensionDefaultValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 29
    const-string/jumbo v1, "mms_max_size"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "max_recipients"

    aput-object v1, v0, v3

    .line 31
    const-string/jumbo v1, "mms_image_max_larger_dimension"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "mms_image_max_smaller_dimension"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 28
    sput-object v0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->SETTINGS_COLUMN_NAMES:[Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 116
    sget-object v0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.sonyericsson.conversations"

    const-string/jumbo v2, "settings"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 40
    const/16 v0, 0x280

    iput v0, p0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->mMmsImageMaxLargerDimensionDefaultValue:I

    .line 42
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->mMmsImageMaxSmallerDimensionDefaultValue:I

    .line 18
    return-void
.end method

.method private matrixBuilder(I)Landroid/database/MatrixCursor;
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    packed-switch p1, :pswitch_data_0

    .line 111
    .end local v0    # "matrixCursor":Landroid/database/MatrixCursor;
    :goto_0
    return-object v0

    .line 95
    .restart local v0    # "matrixCursor":Landroid/database/MatrixCursor;
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v4

    shr-int/lit8 v2, v4, 0xa

    .line 99
    .local v2, "mmsMaxSizeWithOverhead":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRecipientCount()I

    move-result v1

    .line 100
    .local v1, "maxRecipients":I
    new-instance v0, Landroid/database/MatrixCursor;

    .end local v0    # "matrixCursor":Landroid/database/MatrixCursor;
    sget-object v4, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->SETTINGS_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 101
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 102
    .local v3, "rb":Landroid/database/MatrixCursor$RowBuilder;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 104
    iget v4, p0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->mMmsImageMaxLargerDimension:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 105
    iget v4, p0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->mMmsImageMaxSmallerDimension:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->mMmsImageMaxLargerDimensionDefaultValue:I

    iput v0, p0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->mMmsImageMaxLargerDimension:I

    .line 64
    iget v0, p0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->mMmsImageMaxSmallerDimensionDefaultValue:I

    iput v0, p0, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->mMmsImageMaxSmallerDimension:I

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    sget-object v1, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 82
    .end local v0    # "matrixCursor":Landroid/database/MatrixCursor;
    :goto_0
    return-object v0

    .line 75
    .restart local v0    # "matrixCursor":Landroid/database/MatrixCursor;
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/provider/ConversationsSettingsProvider;->matrixBuilder(I)Landroid/database/MatrixCursor;

    move-result-object v0

    .local v0, "matrixCursor":Landroid/database/MatrixCursor;
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method
