.class public Lcom/mediatek/contacts/util/AccountTypeUtils;
.super Ljava/lang/Object;
.source "AccountTypeUtils.java"


# static fields
.field public static final SIM_ACCOUNT_NAME_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 65
    new-instance v3, Landroid/util/SparseArray;

    .line 66
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v4

    .line 65
    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    .line 64
    sput-object v3, Lcom/mediatek/contacts/util/AccountTypeUtils;->SIM_ACCOUNT_NAME_ARRAY:Landroid/util/SparseArray;

    .line 69
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "slotId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 70
    .local v1, "slotId":I
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 71
    .local v0, "accountNamesForSlot":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CSIM"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v3, Lcom/mediatek/contacts/util/AccountTypeUtils;->SIM_ACCOUNT_NAME_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 53
    .end local v0    # "accountNamesForSlot":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "slotId":I
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDataKindImsCall(Lcom/android/contacts/common/model/dataitem/DataKind;I)V
    .locals 4
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p1, "flagsSipAddress"    # I

    .prologue
    const v3, 0x7f0b0101

    .line 227
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    invoke-direct {v0, v3}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 228
    new-instance v0, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;

    const-string/jumbo v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/common/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/common/model/account/AccountType$StringInflater;

    .line 229
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    .line 231
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 232
    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    .line 233
    new-instance v1, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v2, "data1"

    invoke-direct {v1, v2, v3, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public static setStructuredPostalFiledList(Lcom/android/contacts/common/model/dataitem/DataKind;I)V
    .locals 10
    .param p0, "kind"    # Lcom/android/contacts/common/model/dataitem/DataKind;
    .param p1, "postalFlags"    # I

    .prologue
    const v9, 0x7f0b01bd

    const v8, 0x7f0b01bc

    const v7, 0x7f0b01bb

    const v6, 0x7f0b01ba

    const/4 v5, 0x1

    .line 183
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 185
    .local v0, "useJapaneseOrder":Z
    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data10"

    const v4, 0x7f0b01c0

    invoke-direct {v2, v3, v4, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data9"

    const v4, 0x7f0b01bf

    invoke-direct {v2, v3, v4, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data8"

    const v4, 0x7f0b01be

    invoke-direct {v2, v3, v4, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data7"

    invoke-direct {v2, v3, v9, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data6"

    invoke-direct {v2, v3, v8, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data5"

    invoke-direct {v2, v3, v7, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data4"

    invoke-direct {v2, v3, v6, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data4"

    invoke-direct {v2, v3, v6, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data5"

    invoke-direct {v2, v3, v7, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data6"

    invoke-direct {v2, v3, v8, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data7"

    invoke-direct {v2, v3, v9, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data8"

    const v4, 0x7f0b01be

    invoke-direct {v2, v3, v4, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data9"

    const v4, 0x7f0b01bf

    invoke-direct {v2, v3, v4, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string/jumbo v3, "data10"

    const v4, 0x7f0b01c0

    invoke-direct {v2, v3, v4, p1}, Lcom/android/contacts/common/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v5}, Lcom/android/contacts/common/model/account/AccountType$EditField;->setOptional(Z)Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
