.class Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter$1;
.super Ljava/lang/Object;
.source "GroupPhonePickerDialogFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter$1;->this$1:Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;)I
    .locals 4
    .param p1, "arg0"    # Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;
    .param p2, "arg1"    # Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .prologue
    .line 244
    iget-object v0, p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-wide v0, v0, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mRawContactId:J

    iget-object v2, p2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;->mItem:Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;

    iget-wide v2, v2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$DataItem;->mRawContactId:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 243
    check-cast p1, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/group/GroupPhonePickerDialogFragment$PrimarySettingListAdapter$1;->compare(Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;Lcom/sonyericsson/android/socialphonebook/PrimarySettingItem$ListItem;)I

    move-result v0

    return v0
.end method
