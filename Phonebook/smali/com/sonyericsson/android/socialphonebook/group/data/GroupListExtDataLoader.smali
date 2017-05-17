.class public Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;
.super Landroid/content/CursorLoader;
.source "GroupListExtDataLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final DATA_MIMETYPE:I = 0x3

.field public static final GROUP_ID:I = 0x0

.field public static final GROUP_PHOTO:I = 0x1

.field public static final GROUP_RINGTONE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 30
    const-string/jumbo v1, "group_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "data15"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "data1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 29
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;->COLUMNS:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;-><init>(Landroid/content/Context;J)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "groupId"    # J

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-static {p2, p3}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupExtDataKinds$GroupPhoto;->createUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;->setUri(Landroid/net/Uri;)V

    .line 48
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;->setProjection([Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;->createSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;->setSelection(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupListExtDataLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected createSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method
