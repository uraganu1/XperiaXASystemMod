.class public Lcom/mediatek/contacts/model/AccountWithDataSetEx;
.super Lcom/android/contacts/common/model/account/AccountWithDataSet;
.source "AccountWithDataSetEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/model/AccountWithDataSetEx$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx$1;

    invoke-direct {v0}, Lcom/mediatek/contacts/model/AccountWithDataSetEx$1;-><init>()V

    .line 118
    sput-object v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Landroid/os/Parcel;)V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    .line 108
    const-string/jumbo v0, "AccountWithDataSetEx"

    const-string/jumbo v1, "[AccountWithDataSetEx]..."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput p3, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    .line 87
    const-string/jumbo v0, "AccountWithDataSetEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AccountWithDataSetEx]name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    const-string/jumbo v2, ",subId:"

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    iget v2, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SubInfoUtils;->getInvalidSubId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    .line 94
    const-string/jumbo v0, "AccountWithDataSetEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[AccountWithDataSetEx]name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    const-string/jumbo v2, ",dataSet = "

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-super {p0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    if-nez v2, :cond_0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AccountWithDataSetEx {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, ", subId = "

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    iget v1, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "}"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    iget v0, p0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return-void
.end method
