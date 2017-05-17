.class public Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;
.super Landroid/content/CursorLoader;
.source "GroupRawContactLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final DISPLAY_NAME_PRIMARY_COLUMN_INDEX:I = 0x1

.field public static final RAW_CONTACT_ID_COLUMN_INDEX:I = 0x2

.field public static final RAW_ID_COLUMN_INDEX:I


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mContactIds:[J

.field private mDataSet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 23
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 24
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 22
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->COLUMNS:[Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "accountDataSet"    # Ljava/lang/String;
    .param p5, "contactIds"    # [J

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mAccountType:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mAccountName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mDataSet:Ljava/lang/String;

    .line 43
    if-eqz p5, :cond_0

    .line 44
    array-length v0, p5

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mContactIds:[J

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->createUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->setUri(Landroid/net/Uri;)V

    .line 47
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->setProjection([Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->createSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->setSelection(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method private createSelection()Ljava/lang/String;
    .locals 7

    .prologue
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v2, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string/jumbo v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mContactIds:[J

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-wide v0, v4, v3

    .line 61
    .local v0, "id":J
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "id":J
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mAccountType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string/jumbo v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mAccountName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 75
    const-string/jumbo v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v3, "account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mDataSet:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 83
    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v3, "data_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string/jumbo v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupRawContactLoader;->mDataSet:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 89
    :cond_3
    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v3, "data_set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v3, " IS NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private createUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method
