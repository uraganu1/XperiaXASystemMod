.class public Lcom/sonyericsson/android/socialphonebook/backup/model/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mPoBox:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mStreet:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "poBox"    # Ljava/lang/String;
    .param p2, "street"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "state"    # Ljava/lang/String;
    .param p5, "postal"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setPoBox(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setStreet(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p3}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setCity(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, p4}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setState(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, p5}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setPostalCode(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, p6}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setCountry(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, p7}, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->setType(Ljava/lang/String;)V

    .line 166
    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getPoBox()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mPoBox:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mStreet:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mPoBox:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mStreet:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mCity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mState:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mPostalCode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mCountry:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mCity:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mCountry:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setPoBox(Ljava/lang/String;)V
    .locals 0
    .param p1, "poBox"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mPoBox:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mPostalCode:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mState:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setStreet(Ljava/lang/String;)V
    .locals 0
    .param p1, "street"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mStreet:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/model/Address;->mType:Ljava/lang/String;

    .line 48
    return-void
.end method
