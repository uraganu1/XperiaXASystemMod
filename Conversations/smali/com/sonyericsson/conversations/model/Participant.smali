.class public Lcom/sonyericsson/conversations/model/Participant;
.super Ljava/lang/Object;
.source "Participant.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x20f90aae3b294e63L


# instance fields
.field protected final mAddress:Ljava/lang/String;

.field private mIsInputNumber:Z

.field private final mIsMe:Z

.field private mLookedUpAddress:Ljava/lang/String;

.field private final mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsInputNumber:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsInputNumber:Z

    .line 66
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Participant;->determineType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    .line 68
    iget v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "address":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static createAddressStringForMessageDetails(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;
    .locals 5
    .param p0, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    .line 314
    const-string/jumbo v1, ""

    .line 316
    .local v1, "addressStr":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 317
    const-string/jumbo v3, "participant is null"

    invoke-static {v3}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 337
    :cond_0
    :goto_0
    return-object v1

    .line 319
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "address":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 328
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " \u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 323
    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 332
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u200e"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createAddressStringForMessageDetails(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "addresses"    # Ljava/lang/String;

    .prologue
    .line 365
    const-string/jumbo v1, ""

    .line 367
    .local v1, "addressStr":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 368
    const-string/jumbo v5, "Conversations"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 369
    const-string/jumbo v5, "Addresses is empty"

    invoke-static {v5}, Lcom/sonymobile/conversations/util/LogUtil;->d(Ljava/lang/String;)V

    .line 388
    :cond_0
    :goto_0
    return-object v1

    .line 372
    :cond_1
    const-string/jumbo v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "array":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v3, "buf":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_4

    .line 376
    new-instance v5, Lcom/sonyericsson/conversations/model/Participant;

    aget-object v6, v2, v4

    invoke-direct {v5, v6}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 378
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    :cond_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-eq v5, v4, :cond_3

    .line 382
    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 385
    .end local v0    # "address":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createAddressStringForMessageDetails(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const-string/jumbo v1, ""

    .line 343
    .local v1, "addressStr":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 344
    :cond_0
    const-string/jumbo v4, "participants is empty"

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 361
    :goto_0
    return-object v1

    .line 346
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 347
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 349
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/model/Participant;

    invoke-static {v4}, Lcom/sonyericsson/conversations/model/Participant;->createAddressStringForMessageDetails(Lcom/sonyericsson/conversations/model/Participant;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 351
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v4, v3, :cond_3

    .line 355
    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 358
    .end local v0    # "address":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private determineType(Ljava/lang/String;)I
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {}, Lcom/sonymobile/conversations/proxy/ProxyManager;->getProxyService()Lcom/sonymobile/conversations/proxy/ProxyService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/conversations/proxy/ProxyService;->getTelephonyProviderProxy()Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;

    move-result-object v0

    .line 79
    .local v0, "proxy":Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;
    invoke-interface {v0, p1}, Lcom/sonymobile/conversations/proxy/ITelephonyProviderProxy;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x2

    return v1

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x1

    return v1

    .line 84
    :cond_1
    const/4 v1, 0x3

    return v1
.end method

.method public static getMySelfParticipant()Lcom/sonymobile/forklift/HeavyProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/forklift/HeavyProperty",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const-string/jumbo v0, "myselfParticipant"

    .line 94
    .local v0, "label":Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/conversations/model/Participant$1;

    const-string/jumbo v2, "myselfParticipant"

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/model/Participant$1;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method private getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .locals 3

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/util/ContactLookup;->getDefaultProfile()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v1

    iget v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/conversations/util/ContactLookup;->getMatch(ZLjava/lang/String;)Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    return v0

    .line 154
    :cond_0
    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 271
    if-ne p0, p1, :cond_0

    .line 272
    return v5

    .line 273
    :cond_0
    instance-of v3, p1, Lcom/sonyericsson/conversations/model/Participant;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 274
    check-cast v0, Lcom/sonyericsson/conversations/model/Participant;

    .line 275
    .local v0, "otherP":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "thisAddress":Ljava/lang/String;
    iget v3, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    iget v4, v0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    if-eq v3, v4, :cond_1

    .line 277
    return v2

    .line 278
    :cond_1
    iget v3, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    if-ne v3, v5, :cond_2

    .line 279
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 281
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_3
    return v2

    .line 284
    .end local v0    # "otherP":Lcom/sonyericsson/conversations/model/Participant;
    .end local v1    # "thisAddress":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method public getAddress()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mLookedUpAddress:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 125
    .local v0, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_4

    .line 126
    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->address:Ljava/lang/String;

    .line 128
    .local v1, "personAddress":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsInputNumber:Z

    if-eqz v2, :cond_3

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    iput-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mLookedUpAddress:Ljava/lang/String;

    .line 140
    .end local v0    # "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .end local v1    # "personAddress":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/model/Participant;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mLookedUpAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/model/Participant;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mLookedUpAddress:Ljava/lang/String;

    return-object v2

    .line 131
    .restart local v0    # "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    .restart local v1    # "personAddress":Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lcom/sonyericsson/conversations/model/Participant;->mLookedUpAddress:Ljava/lang/String;

    goto :goto_0

    .line 134
    .end local v1    # "personAddress":Ljava/lang/String;
    :cond_4
    iput-object v3, p0, Lcom/sonyericsson/conversations/model/Participant;->mLookedUpAddress:Ljava/lang/String;

    goto :goto_0

    .line 142
    .end local v0    # "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    :cond_5
    iget-object v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mAddress:Ljava/lang/String;

    return-object v2
.end method

.method public getAddressUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 160
    const-string/jumbo v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 162
    :cond_0
    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getContactId()J
    .locals 4

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 170
    .local v0, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_0

    .line 171
    iget-wide v2, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->contactId:J

    return-wide v2

    .line 173
    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getLookedUpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mLookedUpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 187
    .local v0, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->name:Ljava/lang/String;

    return-object v1

    .line 190
    :cond_0
    return-object v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 295
    iget v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    add-int/lit16 v0, v2, 0xd9

    .line 299
    .local v0, "hash":I
    iget v2, p0, Lcom/sonyericsson/conversations/model/Participant;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_0
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int v0, v2, v3

    .line 310
    return v0

    .line 305
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "s":Ljava/lang/String;
    goto :goto_0
.end method

.method public isMe()Z
    .locals 2

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPerson()Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;

    move-result-object v0

    .line 250
    .local v0, "person":Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;
    if-eqz v0, :cond_0

    .line 251
    iget-boolean v1, v0, Lcom/sonyericsson/conversations/util/ContactLookup$ContactMatch;->mIsMe:Z

    return v1

    .line 253
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsMe:Z

    return v1
.end method

.method public setIsInputNumber(Z)V
    .locals 0
    .param p1, "isInputNumber"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/model/Participant;->mIsInputNumber:Z

    .line 257
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getPersonName()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "personName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "personName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "personName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
