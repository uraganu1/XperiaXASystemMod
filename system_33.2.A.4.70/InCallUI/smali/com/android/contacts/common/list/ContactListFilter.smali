.class public final Lcom/android/contacts/common/list/ContactListFilter;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListFilter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/common/list/ContactListFilter;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final accountType:Ljava/lang/String;

.field public final dataSet:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final filterType:I

.field public final icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/list/ContactListFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListFilter;->TAG:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ContactListFilter$1;-><init>()V

    .line 229
    sput-object v0, Lcom/android/contacts/common/list/ContactListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "filterType"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "dataSet"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "displayName"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    .line 74
    iput-object p2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 76
    iput-object p4, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lcom/android/contacts/common/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-object p6, p0, Lcom/android/contacts/common/list/ContactListFilter;->displayName:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 7
    .param p0, "filterType"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v3, -0x2

    .line 193
    invoke-static {p0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 194
    .local v0, "filter":Lcom/android/contacts/common/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 195
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 199
    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 200
    iget v1, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 201
    :cond_1
    invoke-static {v3}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    .line 203
    :cond_2
    return-object v0
.end method

.method private static restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 7
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 207
    const-string/jumbo v0, "filter.type"

    invoke-interface {p0, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 208
    .local v1, "filterType":I
    if-ne v1, v6, :cond_0

    .line 209
    return-object v5

    .line 212
    :cond_0
    const-string/jumbo v0, "filter.accountName"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v0, "filter.accountType"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "accountType":Ljava/lang/String;
    const-string/jumbo v0, "filter.dataSet"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "dataSet":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/common/list/ContactListFilter;

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "filter"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    const/4 v1, 0x0

    .line 177
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v0, v2, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 181
    const-string/jumbo v3, "filter.type"

    if-nez p1, :cond_1

    const/4 v0, -0x1

    .line 180
    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 182
    const-string/jumbo v3, "filter.accountName"

    if-nez p1, :cond_2

    move-object v0, v1

    .line 180
    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 183
    const-string/jumbo v3, "filter.accountType"

    if-nez p1, :cond_3

    move-object v0, v1

    .line 180
    :goto_2
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    const-string/jumbo v2, "filter.dataSet"

    if-nez p1, :cond_4

    .line 180
    :goto_3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    return-void

    .line 181
    :cond_1
    iget v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    goto :goto_2

    .line 184
    :cond_4
    iget-object v1, p1, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    goto :goto_3
.end method


# virtual methods
.method public compareTo(Lcom/android/contacts/common/list/ContactListFilter;)I
    .locals 3
    .param p1, "another"    # Lcom/android/contacts/common/list/ContactListFilter;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 125
    .local v0, "res":I
    if-eqz v0, :cond_0

    .line 126
    return v0

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 130
    if-eqz v0, :cond_1

    .line 131
    return v0

    .line 134
    :cond_1
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    iget v2, p1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Lcom/android/contacts/common/list/ContactListFilter;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->compareTo(Lcom/android/contacts/common/list/ContactListFilter;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    if-ne p0, p1, :cond_0

    .line 153
    return v4

    .line 156
    :cond_0
    instance-of v1, p1, Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v1, :cond_1

    .line 157
    return v3

    :cond_1
    move-object v0, p1

    .line 160
    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    .line 161
    .local v0, "otherFilter":Lcom/android/contacts/common/list/ContactListFilter;
    iget v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    iget v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v1, v2, :cond_2

    .line 162
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    return v4

    .line 165
    :cond_2
    return v3
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 139
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    .line 140
    .local v0, "code":I
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 141
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 145
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 147
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 102
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    .line 119
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :pswitch_0
    const-string/jumbo v0, "default"

    return-object v0

    .line 106
    :pswitch_1
    const-string/jumbo v0, "all_accounts"

    return-object v0

    .line 108
    :pswitch_2
    const-string/jumbo v0, "custom"

    return-object v0

    .line 110
    :pswitch_3
    const-string/jumbo v0, "starred"

    return-object v0

    .line 112
    :pswitch_4
    const-string/jumbo v0, "with_phones"

    return-object v0

    .line 114
    :pswitch_5
    const-string/jumbo v0, "single"

    return-object v0

    .line 116
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string/jumbo v1, " "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 221
    iget v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListFilter;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    return-void
.end method
