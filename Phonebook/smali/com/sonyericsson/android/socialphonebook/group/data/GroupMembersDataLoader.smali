.class public Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;
.super Landroid/content/CursorLoader;
.source "GroupMembersDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final CONTACT_NAME_COLUMN_INDEX:I = 0x6

.field public static final DATA_ID_COLUMN_INDEX:I = 0x5

.field public static final DATA_IS_SUPER_PRIMARY_COLUMN_INDEX:I = 0x3

.field public static final DATA_LABEL_COLUMN_INDEX:I = 0x4

.field public static final DATA_MIMETYPE_COLUMN_INDEX:I = 0x7

.field public static final DATA_NUMBER_COLUMN_INDEX:I = 0x2

.field public static final DATA_TYPE_COLUMN_INDEX:I = 0x1

.field public static final DISPLAY_NAME_PRIMARY_COLUMN_INDEX:I = 0x8

.field public static final PHOTO_ID_COLUM_INDEX:I = 0x9

.field public static final PHOTO_URI_COLUM_INDEX:I = 0xa

.field public static final RAW_CONTACT_ID_COLUMN_INDEX:I


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 24
    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 25
    const-string/jumbo v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 26
    const-string/jumbo v1, "data1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 27
    const-string/jumbo v1, "is_super_primary"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 28
    const-string/jumbo v1, "data3"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "display_name"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "photo_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 34
    const-string/jumbo v1, "photo_uri"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 23
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->COLUMNS:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[JLcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rawContactIds"    # [J
    .param p3, "listener"    # Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 59
    if-eqz p2, :cond_0

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->mRawContactIds:Ljava/util/ArrayList;

    .line 61
    const/4 v2, 0x0

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v0, p2, v2

    .line 62
    .local v0, "id":J
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->mRawContactIds:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "id":J
    :cond_0
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->mListener:Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;

    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->createUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->setUri(Landroid/net/Uri;)V

    .line 67
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->setProjection([Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->createSelection()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->setSelection(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, "sort_key"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->setSortOrder(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private createUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public createSelection()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v3, "selection":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->mRawContactIds:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 80
    const-string/jumbo v4, "raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo v4, " IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->mRawContactIds:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 83
    .local v0, "id":J
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 86
    .end local v0    # "id":J
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .end local v2    # "id$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->mListener:Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;

    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 92
    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader;->mListener:Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;

    invoke-interface {v4, v3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupMembersDataLoader$ExtensionListener;->createSelection(Ljava/lang/StringBuilder;)V

    .line 97
    :cond_3
    return-object v3
.end method
