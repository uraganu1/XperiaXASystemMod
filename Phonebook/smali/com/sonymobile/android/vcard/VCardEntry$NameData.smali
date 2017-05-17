.class public Lcom/sonymobile/android/vcard/VCardEntry$NameData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/sonymobile/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameData"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field private mFamily:Ljava/lang/String;

.field private mFormatted:Ljava/lang/String;

.field private mGiven:Ljava/lang/String;

.field private mMiddle:Ljava/lang/String;

.field private mPhoneticFamily:Ljava/lang/String;

.field private mPhoneticGiven:Ljava/lang/String;

.field private mPhoneticMiddle:Ljava/lang/String;

.field private mPrefix:Ljava/lang/String;

.field private mSortString:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonymobile/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonymobile/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 167
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string/jumbo v3, "raw_contact_id"

    .line 169
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    .line 170
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 172
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 180
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    :goto_3
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 189
    :goto_4
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    :goto_5
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 199
    :goto_6
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 203
    :goto_7
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 210
    :goto_8
    if-eqz v0, :cond_a

    :goto_9
    const-string/jumbo v0, "data1"

    .line 214
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 215
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    return-void

    .line 172
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    iput-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    .line 174
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    iput-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "data2"

    .line 178
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "data3"

    .line 181
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "data5"

    .line 184
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    :cond_5
    const-string/jumbo v3, "data4"

    .line 187
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    :cond_6
    const-string/jumbo v3, "data6"

    .line 190
    iget-object v4, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_5

    :cond_7
    const-string/jumbo v0, "data7"

    .line 196
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move v0, v1

    .line 197
    goto :goto_6

    :cond_8
    const-string/jumbo v0, "data9"

    .line 200
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move v0, v1

    .line 201
    goto :goto_7

    :cond_9
    const-string/jumbo v0, "data8"

    .line 204
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move v0, v1

    .line 205
    goto :goto_8

    :cond_a
    const-string/jumbo v0, "data7"

    .line 211
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_9
.end method

.method public emptyPhoneticStructuredName()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public emptyStructuredName()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    if-eq p0, p1, :cond_2

    .line 232
    instance-of v2, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    if-eqz v2, :cond_3

    .line 235
    check-cast p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;

    .line 237
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    :goto_0
    move v0, v1

    :cond_1
    return v0

    .line 230
    :cond_2
    return v0

    .line 233
    :cond_3
    return v1

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public final getEntryLabel()Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/sonymobile/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public getGiven()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xa

    .line 251
    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v0, v4, v1

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    aput-object v2, v4, v0

    const/4 v0, 0x7

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    aput-object v2, v4, v0

    const/16 v0, 0x8

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    aput-object v2, v4, v0

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    aput-object v2, v4, v0

    .line 255
    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_0
    if-lt v2, v5, :cond_0

    .line 258
    return v0

    .line 255
    :cond_0
    aget-object v3, v4, v2

    .line 256
    mul-int/lit8 v6, v0, 0x1f

    if-nez v3, :cond_1

    move v0, v1

    :goto_1
    add-int v3, v6, v0

    .line 255
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 256
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 220
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-void
.end method

.method public setGiven(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-void
.end method

.method public setMiddle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string/jumbo v0, "family: %s, given: %s, middle: %s, prefix: %s, suffix: %s"

    const/4 v1, 0x5

    .line 263
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
