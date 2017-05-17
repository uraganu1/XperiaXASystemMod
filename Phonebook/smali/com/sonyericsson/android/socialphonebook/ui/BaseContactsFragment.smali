.class public Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;
.super Landroid/app/Fragment;
.source "BaseContactsFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest$ContactsRequestListener;
.implements Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener;
.implements Lcom/sonyericsson/android/socialphonebook/activities/listeners/OnNewIntentListener;


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues:[I = null

.field private static final KEY_CONTACT_CONTAINER:Ljava/lang/String; = "keyContactContainer"

.field private static final KEY_MENU_VISIBLE:Ljava/lang/String; = "keyMenuVisible"


# instance fields
.field private mContactContainerVisible:Z

.field protected mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

.field private mMenuVisible:Z

.field protected mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->values()[Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->CHANGE_SEARCH_QUERY:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->START_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->STOP_SEARCH_MODE:Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->-com_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 21
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mMenuVisible:Z

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactContainerVisible:Z

    .line 21
    return-void
.end method

.method private configureContactsListFragment()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 135
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setMode(I)V

    .line 136
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->isDirectorySearchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setDirectorySearchMode(I)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getContactUri()Landroid/net/Uri;

    move-result-object v0

    .line 147
    .local v0, "contactUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_4

    .line 148
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->isContactUriConsumedForActionViewContact()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 134
    :cond_1
    :goto_2
    return-void

    .line 139
    .end local v0    # "contactUri":Landroid/net/Uri;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setDirectorySearchMode(I)V

    goto :goto_0

    .line 149
    .restart local v0    # "contactUri":Landroid/net/Uri;
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setShouldDisplayContactNotFoundDialog(Z)V

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setContactUriConsumedForActionViewContact(Z)V

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 154
    :cond_4
    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSelectedContactUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 160
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSearchMode(Z)V

    .line 161
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setFragmentQueryString(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setSearchMode(Z)V

    .line 167
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;->setQueryString(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getMenuVisibility()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mMenuVisible:Z

    return v0
.end method

.method public onAction(Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;
    .param p2, "newQueryString"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->-getcom_sonyericsson_android_socialphonebook_activities_ActionBarAdapter$ContactQueryListener$ActionSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/activities/ActionBarAdapter$ContactQueryListener$Action;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unkonwn ActionBarAdapter action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSearchMode(Z)V

    .line 180
    :goto_0
    return-void

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setSearchMode(Z)V

    .line 187
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setFragmentQueryString(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setFragmentQueryString(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    const-string/jumbo v0, "keyMenuVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mMenuVisible:Z

    .line 52
    const-string/jumbo v0, "keyContactContainer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactContainerVisible:Z

    .line 48
    :cond_0
    return-void
.end method

.method public onNewIntent()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->onNewIntent()V

    .line 198
    return-void
.end method

.method public onNewRequest(Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mRequest:Lcom/sonyericsson/android/socialphonebook/list/ContactsRequest;

    .line 172
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->onUpdateChildFragmentVisibilityHint()V

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->onUpdateChildFragmentMenuVisibility()V

    .line 88
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->configureContactsListFragment()V

    .line 79
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    const-string/jumbo v0, "keyMenuVisible"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mMenuVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    const-string/jumbo v0, "keyContactContainer"

    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactContainerVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method protected onUpdateChildFragmentMenuVisibility()V
    .locals 2

    .prologue
    .line 68
    iget-boolean v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactContainerVisible:Z

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setMenuVisibility(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 63
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    .local v0, "showMenu":Z
    goto :goto_0
.end method

.method protected onUpdateChildFragmentVisibilityHint()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactsListFragment:Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->getUserVisibleHint()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/ContactsListFragment;->setUserVisibleHint(Z)V

    .line 74
    return-void
.end method

.method protected setContactContainerVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mContactContainerVisible:Z

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->onUpdateChildFragmentMenuVisibility()V

    .line 125
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1, "menuVisible"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->mMenuVisible:Z

    .line 107
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->onUpdateChildFragmentMenuVisibility()V

    .line 105
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/app/Fragment;->setUserVisibleHint(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/BaseContactsFragment;->onUpdateChildFragmentVisibilityHint()V

    .line 92
    :cond_0
    return-void
.end method
