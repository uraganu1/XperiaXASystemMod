.class public Lcom/sonyericsson/android/socialphonebook/util/DataStatus;
.super Ljava/lang/Object;
.source "DataStatus.java"


# instance fields
.field private mIconRes:I

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

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mPresence:I

    .line 38
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mTimestamp:J

    .line 41
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 42
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mIconRes:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mPresence:I

    .line 38
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mTimestamp:J

    .line 41
    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 42
    iput v2, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mIconRes:I

    .line 49
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    .line 47
    return-void
.end method

.method private fromCursor(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, -0x1

    .line 88
    const-string/jumbo v0, "mode"

    invoke-static {p1, v0, v4}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mPresence:I

    .line 89
    const-string/jumbo v0, "status"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "status_ts"

    const-wide/16 v2, -0x1

    invoke-static {p1, v0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mTimestamp:J

    .line 91
    const-string/jumbo v0, "status_res_package"

    invoke-static {p1, v0}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "status_icon"

    invoke-static {p1, v0, v4}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getInt(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mIconRes:I

    .line 87
    return-void
.end method

.method public static fromValue(Landroid/content/ContentValues;)Lcom/sonyericsson/android/socialphonebook/util/DataStatus;
    .locals 4
    .param p0, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 78
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;-><init>()V

    .line 79
    .local v0, "status":Lcom/sonyericsson/android/socialphonebook/util/DataStatus;
    const-string/jumbo v1, "mode"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mPresence:I

    .line 80
    const-string/jumbo v1, "status"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mStatus:Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "status_ts"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mTimestamp:J

    .line 82
    const-string/jumbo v1, "status_res_package"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 83
    const-string/jumbo v1, "status_icon"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mIconRes:I

    .line 84
    return-object v0
.end method

.method private static getInt(Landroid/database/Cursor;Ljava/lang/String;I)I
    .locals 2
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "missingValue"    # I

    .prologue
    .line 126
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 127
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
    .line 131
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 132
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
    .line 122
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isNull(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 115
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mIconRes:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v1, 0x1

    .line 118
    .local v1, "validIcon":Z
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    iget v4, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mIconRes:I

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    return-object v2

    .line 117
    .end local v1    # "validIcon":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "validIcon":Z
    goto :goto_0
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mPresence:I

    return v0
.end method

.method public getStatus()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mResPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mTimestamp:J

    return-wide v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public possibleUpdate(Landroid/database/Cursor;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    const-string/jumbo v4, "status"

    invoke-static {p1, v4}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    .line 58
    .local v0, "hasStatus":Z
    :goto_0
    const-string/jumbo v4, "status_ts"

    invoke-static {p1, v4}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->isNull(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    .line 62
    .local v1, "hasTimestamp":Z
    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 57
    .end local v0    # "hasStatus":Z
    .end local v1    # "hasTimestamp":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "hasStatus":Z
    goto :goto_0

    .line 58
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "hasTimestamp":Z
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    .line 65
    :cond_3
    if-eqz v1, :cond_6

    .line 67
    const-string/jumbo v4, "status_ts"

    const-wide/16 v6, -0x1

    invoke-static {p1, v4, v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->getLong(Landroid/database/Cursor;Ljava/lang/String;J)J

    move-result-wide v2

    .line 68
    .local v2, "newTimestamp":J
    iget-wide v4, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mTimestamp:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    return-void

    .line 63
    .end local v2    # "newTimestamp":J
    :cond_4
    return-void

    .line 70
    .restart local v2    # "newTimestamp":J
    :cond_5
    iput-wide v2, p0, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->mTimestamp:J

    .line 74
    .end local v2    # "newTimestamp":J
    :cond_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/util/DataStatus;->fromCursor(Landroid/database/Cursor;)V

    .line 56
    return-void
.end method
