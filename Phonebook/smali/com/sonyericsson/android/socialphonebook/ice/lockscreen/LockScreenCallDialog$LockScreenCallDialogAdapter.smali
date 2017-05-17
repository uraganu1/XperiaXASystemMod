.class Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenCallDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockScreenCallDialogAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPhoneData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "phoneData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 114
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->mPhoneData:Ljava/util/ArrayList;

    .line 115
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->mContext:Landroid/content/Context;

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 113
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->mPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->mPhoneData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 131
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 137
    instance-of v3, p2, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    if-eqz v3, :cond_0

    move-object v0, p2

    .line 138
    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    .line 143
    .local v0, "listItem":Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->getItem(I)Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;

    move-result-object v1

    .line 145
    .local v1, "phoneData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 146
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->getPhoneNumberType()I

    move-result v4

    invoke-static {v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v4

    .line 145
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "phoneTypeLabel":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setMinorText(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->getMinorText()Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 150
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;->setMajorText(Ljava/lang/String;)V

    .line 152
    return-object v0

    .line 140
    .end local v0    # "listItem":Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;
    .end local v1    # "phoneData":Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenAdapter$PhoneNumberData;
    .end local v2    # "phoneTypeLabel":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/ice/lockscreen/LockScreenCallDialog$LockScreenCallDialogAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400e2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;

    .restart local v0    # "listItem":Lcom/sonyericsson/android/socialphonebook/ui/widget/TwoTextView;
    goto :goto_0
.end method
