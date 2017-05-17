.class public Lcom/android/vcard/VCardEntry$NameData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
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
.method static synthetic -get0(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/vcard/VCardEntry$NameData;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/vcard/VCardEntry$NameData;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 4
    .param p2, "backReferenceIndex"    # I
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
    .line 173
    .local p1, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 172
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 174
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string/jumbo v2, "raw_contact_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 175
    const-string/jumbo v2, "mimetype"

    const-string/jumbo v3, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 177
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 178
    const-string/jumbo v2, "data2"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 180
    :cond_0
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    const-string/jumbo v2, "data3"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    const-string/jumbo v2, "data5"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 187
    const-string/jumbo v2, "data4"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 189
    :cond_3
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 190
    const-string/jumbo v2, "data6"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 193
    :cond_4
    const/4 v1, 0x0

    .line 195
    .local v1, "phoneticNameSpecified":Z
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 196
    const-string/jumbo v2, "data7"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 197
    const/4 v1, 0x1

    .line 199
    :cond_5
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 200
    const-string/jumbo v2, "data9"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 201
    const/4 v1, 0x1

    .line 203
    :cond_6
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 204
    const-string/jumbo v2, "data8"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 205
    const/4 v1, 0x1

    .line 210
    :cond_7
    if-nez v1, :cond_8

    .line 211
    const-string/jumbo v2, "data7"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 214
    :cond_8
    const-string/jumbo v2, "data1"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 215
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public emptyPhoneticStructuredName()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public emptyStructuredName()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 159
    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 229
    if-ne p0, p1, :cond_0

    .line 230
    const/4 v1, 0x1

    return v1

    .line 232
    :cond_0
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$NameData;

    if-nez v2, :cond_1

    .line 233
    return v1

    :cond_1
    move-object v0, p1

    .line 235
    check-cast v0, Lcom/android/vcard/VCardEntry$NameData;

    .line 237
    .local v0, "nameData":Lcom/android/vcard/VCardEntry$NameData;
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 238
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 237
    if-eqz v2, :cond_2

    .line 246
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 237
    :cond_2
    return v1
.end method

.method public final getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 251
    const/16 v3, 0xa

    new-array v2, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 252
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    const/4 v5, 0x7

    aput-object v3, v2, v5

    .line 253
    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    const/16 v5, 0x8

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    const/16 v5, 0x9

    aput-object v3, v2, v5

    .line 254
    .local v2, "hashTargets":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 255
    .local v0, "hash":I
    array-length v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 256
    .local v1, "hashTarget":Ljava/lang/String;
    mul-int/lit8 v7, v0, 0x1f

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int v0, v7, v3

    .line 255
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 256
    goto :goto_1

    .line 258
    .end local v1    # "hashTarget":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mFormatted:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticFamily:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticMiddle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mPhoneticGiven:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$NameData;->mSortString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 263
    const-string/jumbo v0, "family: %s, given: %s, middle: %s, prefix: %s, suffix: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 264
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mFamily:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mGiven:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mMiddle:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mPrefix:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$NameData;->mSuffix:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 263
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
