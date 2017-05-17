.class final Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/SlotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhbInfoWrapper"
.end annotation


# instance fields
.field private mInitialized:Z

.field private mSubId:I

.field private mUsimAnrCount:I

.field private mUsimEmailCount:I

.field private mUsimGroupMaxCount:I

.field private mUsimGroupMaxNameLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getInvalidSubId()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    .line 158
    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->resetPhbInfo()V

    .line 157
    return-void
.end method


# virtual methods
.method public getUsimAnrCount()I
    .locals 3

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 223
    :cond_0
    const-string/jumbo v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getUsimAnrCount] subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    return v0
.end method

.method public getUsimEmailCount()I
    .locals 3

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 231
    :cond_0
    const-string/jumbo v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getUsimEmailCount] subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    return v0
.end method

.method public getUsimGroupMaxCount()I
    .locals 3

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 215
    :cond_0
    const-string/jumbo v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getUsimGroupMaxCount] subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    return v0
.end method

.method public getUsimGroupMaxNameLength()I
    .locals 3

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->refreshPhbInfo()V

    .line 207
    :cond_0
    const-string/jumbo v0, "SlotUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getUsimGroupMaxNameLength] subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    return v0
.end method

.method public refreshPhbInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 171
    const-string/jumbo v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[refreshPhbInfo]refreshing phb info for subId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    const-string/jumbo v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[refreshPhbInfo]phb not ready, refresh aborted. slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 175
    return-void

    .line 178
    :cond_0
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/SimCardUtils;->isSimUsimType(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    const-string/jumbo v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[refreshPhbInfo]not usim phb, nothing to refresh, keep default, slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 181
    return-void

    .line 184
    :cond_1
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/SubInfoUtils;->getPhoneBookServiceName()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "serviceName":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 187
    .local v1, "iIccPhb":Lcom/android/internal/telephony/IIccPhoneBook;
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGrpMaxNameLen(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    .line 188
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGrpMaxCount(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    .line 189
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAnrCount(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    .line 190
    iget v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mSubId:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getEmailCount(I)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    iput-boolean v7, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 198
    const-string/jumbo v3, "SlotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[refreshPhbInfo]refreshing done, UsimGroupMaxNameLenght = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    const-string/jumbo v5, ", UsimGroupMaxCount = "

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    const-string/jumbo v5, ", UsimAnrCount = "

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 199
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    const-string/jumbo v5, ", UsimEmailCount = "

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    iget v5, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    .line 198
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 191
    .end local v1    # "iIccPhb":Lcom/android/internal/telephony/IIccPhoneBook;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "SlotUtils"

    const-string/jumbo v4, "[refreshPhbInfo]Exception happened when refreshing phb info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 194
    iput-boolean v6, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 195
    return-void
.end method

.method public resetPhbInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxNameLength:I

    .line 164
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimGroupMaxCount:I

    .line 165
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimAnrCount:I

    .line 166
    iput v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mUsimEmailCount:I

    .line 167
    iput-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/SlotUtils$PhbInfoWrapper;->mInitialized:Z

    .line 162
    return-void
.end method
