.class public Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# static fields
.field private static final CONTACT_NAME_DELIMETER:Ljava/lang/String; = "\n"


# instance fields
.field private mAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mEmail:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Email;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mImAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/IM;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;

.field private mNotes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganization:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefix:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAddress(Lcom/sonyericsson/android/socialphonebook/backup/model/Address;)V
    .locals 1
    .param p1, "address"    # Lcom/sonyericsson/android/socialphonebook/backup/model/Address;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mAddress:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mAddress:Ljava/util/ArrayList;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mAddress:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public addEmail(Lcom/sonyericsson/android/socialphonebook/backup/model/Email;)V
    .locals 1
    .param p1, "e"    # Lcom/sonyericsson/android/socialphonebook/backup/model/Email;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mEmail:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mEmail:Ljava/util/ArrayList;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mEmail:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public addImAddresses(Lcom/sonyericsson/android/socialphonebook/backup/model/IM;)V
    .locals 1
    .param p1, "imAddr"    # Lcom/sonyericsson/android/socialphonebook/backup/model/IM;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mImAddress:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mImAddress:Ljava/util/ArrayList;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mImAddress:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method public addNotes(Ljava/lang/String;)V
    .locals 1
    .param p1, "notes"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mNotes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mNotes:Ljava/util/ArrayList;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mNotes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public addOrganization(Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;)V
    .locals 1
    .param p1, "organization"    # Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mOrganization:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mOrganization:Ljava/util/ArrayList;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mOrganization:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public addPhone(Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPhone:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPhone:Ljava/util/ArrayList;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPhone:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    return-void
.end method

.method public getAddresses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Address;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mAddress:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEmail()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mEmail:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    .local v0, "fullName":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPrefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :goto_0
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mGivenName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mGivenName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    :goto_1
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mMiddleName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mMiddleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    :goto_2
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mFamilyName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 387
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    :goto_3
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mSuffix:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 394
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 369
    :cond_0
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 376
    :cond_1
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 383
    :cond_2
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 390
    :cond_3
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 397
    :cond_4
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImAddresses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/IM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mImAddress:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mNotes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrganization()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mOrganization:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhone()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPhone:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAddresses(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Address;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mAddress:Ljava/util/ArrayList;

    .line 282
    return-void
.end method

.method public setEmail(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Email;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "email":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Email;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mEmail:Ljava/util/ArrayList;

    .line 310
    return-void
.end method

.method public setFamilyName(Ljava/lang/String;)V
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mFamilyName:Ljava/lang/String;

    .line 181
    :cond_0
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 2
    .param p1, "fullName"    # Ljava/lang/String;

    .prologue
    .line 403
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, "\n"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setPrefix(Ljava/lang/String;)V

    .line 407
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setGivenName(Ljava/lang/String;)V

    .line 410
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setMiddleName(Ljava/lang/String;)V

    .line 413
    :cond_2
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 414
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setFamilyName(Ljava/lang/String;)V

    .line 416
    :cond_3
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 417
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->setSuffix(Ljava/lang/String;)V

    .line 402
    :cond_4
    return-void
.end method

.method public setGivenName(Ljava/lang/String;)V
    .locals 1
    .param p1, "givenName"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mGivenName:Ljava/lang/String;

    .line 145
    :cond_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mId:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setImAddresses(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/IM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "imAddresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/IM;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mImAddress:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method public setMiddleName(Ljava/lang/String;)V
    .locals 1
    .param p1, "middleName"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mMiddleName:Ljava/lang/String;

    .line 163
    :cond_0
    return-void
.end method

.method public setNotes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mNotes:Ljava/util/ArrayList;

    .line 254
    return-void
.end method

.method public setOrganization(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "organization":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Organization;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mOrganization:Ljava/util/ArrayList;

    .line 199
    return-void
.end method

.method public setPhone(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "phone":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/Phone;>;"
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPhone:Ljava/util/ArrayList;

    .line 433
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mPrefix:Ljava/lang/String;

    .line 109
    :cond_0
    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 1
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mSuffix:Ljava/lang/String;

    .line 127
    :cond_0
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Contact;->mVersion:Ljava/lang/String;

    .line 337
    return-void
.end method
