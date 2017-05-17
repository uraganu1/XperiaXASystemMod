.class public Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "LockScreenContactsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContactData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private getPhoneNumbers(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "contactCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 81
    const-string/jumbo v0, "_id"

    .line 80
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "id":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v9, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;>;"
    const-string/jumbo v0, "has_phone_number"

    .line 84
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 87
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    const-string/jumbo v3, "contact_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 89
    aput-object v6, v4, v5

    move-object v5, v2

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 91
    .local v7, "phoneCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    :cond_0
    const-string/jumbo v0, "data2"

    .line 94
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 97
    .local v10, "phoneType":I
    const-string/jumbo v0, "data1"

    .line 96
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "phoneNumber":Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    invoke-direct {v0, v8, v10}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 104
    .end local v7    # "phoneCursor":Landroid/database/Cursor;
    .end local v8    # "phoneNumber":Ljava/lang/String;
    .end local v10    # "phoneType":I
    :cond_1
    invoke-static {v9}, Lcom/sonyericsson/android/socialphonebook/Collapser;->collapseList(Ljava/util/List;)V

    .line 105
    return-object v9
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->deliverResult(Ljava/util/ArrayList;)V

    return-void
.end method

.method public deliverResult(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->mContactData:Ljava/util/ArrayList;

    .line 112
    return-void

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->mContactData:Ljava/util/ArrayList;

    .line 117
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->mContactData:Ljava/util/ArrayList;

    invoke-super {p0, v0}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 109
    :cond_1
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v7, "contactsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;>;"
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/common/provider/SemcContactsContract$ExtendContacts;->CONTENT_ICE_URI:Landroid/net/Uri;

    const-string/jumbo v5, "display_name"

    move-object v3, v2

    move-object v4, v2

    .line 49
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 52
    .local v8, "iceContacts":Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 53
    return-object v7

    .line 56
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 60
    :cond_1
    invoke-direct {p0, v8}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->getPhoneNumbers(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v6

    .line 61
    .local v6, "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 72
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 74
    .end local v6    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;>;"
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 76
    return-object v7

    .line 65
    .restart local v6    # "phoneNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;>;"
    :cond_3
    const-string/jumbo v9, "display_name"

    .line 64
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "contactName":Ljava/lang/String;
    const-string/jumbo v9, "_id"

    .line 66
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 69
    .local v1, "contactId":J
    const-string/jumbo v9, "photo_id"

    .line 68
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 70
    .local v4, "photoId":J
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;-><init>(JLjava/lang/String;JLjava/util/List;)V

    .line 71
    .local v0, "contactData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$ContactData;
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->mContactData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->mContactData:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->deliverResult(Ljava/util/ArrayList;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->mContactData:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenContactsLoader;->forceLoad()V

    .line 33
    :cond_2
    return-void
.end method
