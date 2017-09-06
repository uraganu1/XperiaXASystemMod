.class public Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;,
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;,
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;
    }
.end annotation


# instance fields
.field private mAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSetDefault:Z

.field private mContext:Landroid/content/Context;

.field private mIsDefaultChecked:Z

.field private mIsSelected:Z

.field private mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSuggestedAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTitleResId:I


# direct methods
.method static synthetic -get0(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mSuggestedAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 374
    new-instance v0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    return-void
.end method

.method public static newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .locals 4
    .param p0, "titleResId"    # I
    .param p1, "canSetDefault"    # Z
    .param p3, "listener"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            ")",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "accountHandlesCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_0
    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;-><init>()V

    .line 105
    .local v2, "fragment":Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "title_res_id"

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string/jumbo v3, "can_set_default"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    const-string/jumbo v3, "account_handles"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 109
    const-string/jumbo v3, "listener"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    invoke-virtual {v2, v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {v2, p3}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 112
    return-object v2
.end method

.method private registerIntentFilter()V
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mContext:Landroid/content/Context;

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    .line 366
    const-string/jumbo v1, "android.telecom.action.PHONE_ACCOUNT_CHANGED"

    .line 365
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 362
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 159
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "title_res_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTitleResId:I

    .line 160
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "can_set_default"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    .line 161
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "account_handles"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    .line 162
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "listener"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    iput-object v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string/jumbo v7, "is_default_checked"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    .line 166
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "telecom"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/TelecomManager;

    .line 167
    iput-object v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 171
    new-instance v6, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    .line 188
    .local v6, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$3;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    .line 195
    .local v2, "checkListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;

    .line 197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 199
    iget-object v8, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    .line 198
    const v9, 0x7f04003d

    .line 196
    invoke-direct {v5, p0, v7, v9, v8}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 201
    .local v5, "selectAccountListAdapter":Landroid/widget/ListAdapter;
    iget v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 205
    .local v4, "dialog":Landroid/app/AlertDialog;
    iget-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    if-eqz v7, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 209
    const v8, 0x7f040014

    .line 207
    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 212
    .local v3, "checkboxLayout":Landroid/widget/LinearLayout;
    const v7, 0x7f0f0054

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 213
    .local v1, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    iget-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 220
    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v3    # "checkboxLayout":Landroid/widget/LinearLayout;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->registerIntentFilter()V

    .line 223
    return-object v4
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 391
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 393
    const-string/jumbo v0, "SelectPhoneAccountDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDismiss, mContext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 396
    iput-object v3, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mContext:Landroid/content/Context;

    .line 400
    :cond_0
    iput-object v3, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mSuggestedAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 390
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 154
    const-string/jumbo v0, "is_default_checked"

    iget-boolean v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->dismissAllowingStateLoss()V

    .line 350
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    .line 341
    return-void
.end method

.method public setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 118
    return-void
.end method
