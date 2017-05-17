.class public Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;
.super Landroid/content/CursorLoader;
.source "GroupAccountContactsLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 18
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 17
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->COLUMNS:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->mAccountType:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->mAccountName:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->setUri(Landroid/net/Uri;)V

    .line 31
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->setProjection([Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->createSelection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->setSelection(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->createSelectionArgs()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->setSelectionArgs([Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private createSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 52
    .local v0, "selectionArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->mAccountType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/data/GroupAccountContactsLoader;->mAccountName:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "0"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 55
    return-object v0
.end method
