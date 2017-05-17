.class public final Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixUtility;
.super Ljava/lang/Object;
.source "PrefixUtility.java"


# static fields
.field public static final ACTION_BROADCAST:Ljava/lang/String; = "com.sony.android.CALL_SETTINGS_BROADCAST"

.field public static final ACTION_GENERIC_PREFIX:Ljava/lang/String; = "com.somc.android.ACTION_GENERIC_PREFIX_SETTING"

.field public static final ACTION_SERVICE:Ljava/lang/String; = "com.sony.android.CALL_SETTINGS_SERVICE"

.field public static final AUTO_CONVERSE_ENABLE_RESULT:Ljava/lang/String; = "autoconversion_enable"

.field public static final AUTO_CONVERSE_VALUE_DEFAULT:I = 0x1

.field public static final AUTO_CONVERSE_VALUE_ENABLE:I = 0x1

.field public static final CLIR_PREFIX_1:Ljava/lang/String; = "#31#"

.field public static final CLIR_PREFIX_2:Ljava/lang/String; = "*31#"

.field public static final CLIR_PREFIX_PLUS_1:Ljava/lang/String; = "#31#+"

.field public static final CLIR_PREFIX_PLUS_2:Ljava/lang/String; = "*31#+"

.field public static final INTENT_EXTRA_NAMES:Ljava/lang/String; = "names"

.field public static final INTENT_EXTRA_NUMBERS:Ljava/lang/String; = "numbers"

.field public static final INTENT_EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final INTERNATIONAL_PLUS_PREFIX:Ljava/lang/String; = "+"

.field public static final ITALY_COUNTRY_CODE:Ljava/lang/String; = "+39"

.field public static final TYPE_COUNTRY_CODE:I = 0x3

.field public static final TYPE_GENERIC_PREFIX:I = 0x1

.field public static final TYPE_INTERNATIONAL_PREFIX:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneNumber(Landroid/view/ContextMenu$ContextMenuInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, "result":Ljava/lang/String;
    instance-of v2, p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    if-eqz v2, :cond_0

    .line 106
    check-cast p0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;

    .end local p0    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$EntryContextMenuInfo;->getCopyText()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneNumberHelper;->removeLtrDirection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 110
    .local v0, "result":Ljava/lang/String;
    .restart local p0    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_0
    instance-of v2, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_1

    .line 112
    check-cast p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p0    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget-object v1, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 113
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 114
    const v2, 0x7f0e001c

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 117
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method public static getPresentationType(Landroid/view/ContextMenu$ContextMenuInfo;)I
    .locals 4
    .param p0, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 121
    const/4 v1, 0x1

    .line 123
    .local v1, "result":I
    instance-of v3, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_0

    .line 125
    check-cast p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p0    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget-object v2, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 126
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 127
    const v3, 0x7f0e001d

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 129
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 133
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return v1
.end method

.method public static showMissingPrefixDialog(Landroid/app/FragmentManager;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 138
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 139
    .local v2, "prevFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 144
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->newInstance()Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;

    move-result-object v1

    .line 145
    .local v1, "missingPrefixDialog":Landroid/app/DialogFragment;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/MissingPrefixDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 136
    return-void
.end method

.method public static showPrefixDialog(Landroid/app/FragmentManager;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "type"    # I
    .param p2, "prefixNames"    # [Ljava/lang/String;
    .param p3, "prefixNumbers"    # [Ljava/lang/String;
    .param p4, "currentPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 152
    .local v0, "fragmentTransaction":Landroid/app/FragmentTransaction;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 153
    .local v2, "prevFragment":Landroid/app/Fragment;
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 156
    :cond_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 158
    invoke-static {p1, p2, p3, p4}, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->newInstance(I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;

    move-result-object v1

    .line 160
    .local v1, "prefixDialog":Landroid/app/DialogFragment;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/plugin/prefix/PrefixDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 150
    return-void
.end method
