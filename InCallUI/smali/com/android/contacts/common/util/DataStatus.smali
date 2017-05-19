.class public Lcom/android/contacts/common/util/DataStatus;
.super Ljava/lang/Object;
.source "DataStatus.java"


# instance fields
.field private mIconRes:I

.field private mLabelRes:I

.field private mPresence:I

.field private mResPackage:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    .line 36
    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    .line 39
    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    .line 41
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    .line 36
    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    .line 39
    iput-object v3, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 40
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    .line 41
    iput v2, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    .line 46
    return-void
.end method

.method private fromCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, -0x1

    .line 77
    const-string/jumbo v0, "mode"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mPresence:I

    .line 78
    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "status_ts"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/android/contacts/common/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/common/util/DataStatus;->mTimestamp:J

    .line 80
    const-string/jumbo v0, "status_res_package"

    invoke-static {p1, v0}, Lcom/android/contacts/common/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "status_icon"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mIconRes:I

    .line 82
    const-string/jumbo v0, "status_label"

    invoke-static {p1, v0, v4}, Lcom/android/contacts/common/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/DataStatus;->mLabelRes:I

    .line 76
    return-void
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "missingValue"    # I

    .prologue
    .line 153
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "missingValue":I
    :goto_0
    return p2

    .restart local p2    # "missingValue":I
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0
.end method

.method private static getLong(Landroid/database/Cursor;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "missingValue"    # J

    .prologue
    .line 158
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, "columnIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "missingValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "missingValue":J
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_0
.end method

.method private static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
