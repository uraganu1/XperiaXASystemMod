.class public Lcom/android/contacts/activities/ContactEditorActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/android/contacts/util/DialogManager$DialogShowingViewActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactEditorActivity$1;
    }
.end annotation


# static fields
.field public static final ACTION_JOIN_COMPLETED:Ljava/lang/String; = "joinCompleted"

.field public static final ACTION_NEW_CONTACT:Ljava/lang/String; = "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

.field public static final ACTION_SAVE_COMPLETED:Ljava/lang/String; = "saveCompleted"

.field public static final INTENT_KEY_LAUNCH_CONTACT_DETAILS_ON_SAVE_COMPLETED:Ljava/lang/String; = "launchContactDetailsOnSaveCompleted"

.field public static final SUBACTIVITY_FIND_LINK_SUGGESTIONS:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDialogManager:Lcom/android/contacts/util/DialogManager;

.field private mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mLaunchContactDetailsOnSaveCompleted:Z


# direct methods
.method static synthetic -get0(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/contacts/activities/ContactEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mLaunchContactDetailsOnSaveCompleted:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorActivity;->TAG:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 84
    new-instance v0, Lcom/android/contacts/util/DialogManager;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/DialogManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    .line 198
    new-instance v0, Lcom/android/contacts/activities/ContactEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    .line 197
    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 56
    return-void
.end method


# virtual methods
.method public getDialogManager()Lcom/android/contacts/util/DialogManager;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 309
    if-nez p1, :cond_1

    .line 310
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    .line 311
    :cond_0
    if-eqz p3, :cond_1

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "resultIntent":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactEditorActivity;->startActivity(Landroid/content/Intent;)V

    .line 318
    .end local v0    # "resultIntent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 308
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->revertIfChanged()V

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 91
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "launchContactDetailsOnSaveCompleted"

    const/4 v9, 0x0

    .line 95
    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mLaunchContactDetailsOnSaveCompleted:Z

    .line 101
    const-string/jumbo v8, "joinCompleted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 103
    return-void

    .line 106
    :cond_0
    const-string/jumbo v8, "saveCompleted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->finish()V

    .line 108
    return-void

    .line 111
    :cond_1
    const-string/jumbo v8, "com.sonyericsson.android.socialphonebook.action.NEW_CONTACT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 112
    const v8, 0x7f090068

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->setTitle(I)V

    .line 115
    :cond_2
    const v8, 0x7f040033

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 118
    .local v1, "actionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_3

    .line 123
    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/ContactEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 124
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isActionBarWithCancelTextEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 126
    const v8, 0x7f040073

    .line 125
    invoke-virtual {v4, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 130
    .local v3, "customActionBarView":Landroid/view/View;
    :goto_0
    const v8, 0x7f0e01c6

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 131
    .local v6, "saveMenuItem":Landroid/view/View;
    new-instance v8, Lcom/android/contacts/activities/ContactEditorActivity$2;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v8, 0x7f0e0141

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 138
    .local v2, "cancelMenuItem":Landroid/view/View;
    new-instance v8, Lcom/android/contacts/activities/ContactEditorActivity$3;

    invoke-direct {v8, p0}, Lcom/android/contacts/activities/ContactEditorActivity$3;-><init>(Lcom/android/contacts/activities/ContactEditorActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 146
    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 149
    .end local v2    # "cancelMenuItem":Landroid/view/View;
    .end local v3    # "customActionBarView":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "saveMenuItem":Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 150
    const v9, 0x7f0e00a5

    .line 149
    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/ContactEditorFragment;

    iput-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 151
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v9, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-virtual {v8, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    .line 152
    const-string/jumbo v8, "android.intent.action.EDIT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 153
    :goto_1
    iget-object v8, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v0, v7, v9}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 87
    return-void

    .line 128
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    const v8, 0x7f040072

    invoke-virtual {v4, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .restart local v3    # "customActionBarView":Landroid/view/View;
    goto :goto_0

    .line 152
    .end local v3    # "customActionBarView":Landroid/view/View;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_5
    const/4 v7, 0x0

    .local v7, "uri":Landroid/net/Uri;
    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 185
    invoke-static {p1}, Lcom/android/contacts/util/DialogManager;->isManagedId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mDialogManager:Lcom/android/contacts/util/DialogManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/util/DialogManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 188
    :cond_0
    sget-object v0, Lcom/android/contacts/activities/ContactEditorActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown dialog requested, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 158
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 160
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    if-nez v0, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v0, "android.intent.action.EDIT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    .line 157
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    const-string/jumbo v0, "saveCompleted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    .line 169
    const-string/jumbo v1, "saveMode"

    .line 168
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 170
    const-string/jumbo v1, "saveSucceeded"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 173
    const-string/jumbo v1, "isContactRemovedFromSpeedDial"

    .line 172
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 168
    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZIZLandroid/net/Uri;Z)V

    goto :goto_0

    .line 174
    :cond_3
    const-string/jumbo v0, "joinCompleted"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 177
    const-string/jumbo v0, "aggregationResult"

    .line 176
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;

    .line 179
    const-string/jumbo v1, "contactInfo"

    .line 178
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .line 175
    invoke-virtual {v2, v3, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->onJoinCompleted(Landroid/net/Uri;Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$AggregationResult;Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)V

    goto :goto_0
.end method
