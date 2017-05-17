.class public Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;
.super Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;
.source "FindAndLinkProcessActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/ResultDialogFragment$ResultCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;,
        Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;
    }
.end annotation


# static fields
.field private static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static final ERR_CANCEL:I = 0x1

.field private static final ERR_CANCEL_BY_ACTIVITY:I = 0x3

.field private static final ERR_NONE:I = 0x0

.field private static final ERR_UNKNOWN:I = 0x2

.field public static final FIND_PROCESS_ALL_CONTACTS:Ljava/lang/String; = "com.android.contacts.action.FIND_PROCESS_ALL_CONTACTS"

.field public static final FIND_PROCESS_SINGLE_CONTACT:Ljava/lang/String; = "com.android.contacts.action.FIND_PROCESS_SINGLE_CONTACT"

.field private static final MAX_OPERATIONS:I = 0x1f4

.field private static final MAX_SUGGESTIONS:I = 0x4

.field private static final SUBACTIVITY_LINK_MULTI_CONTACTS:I = 0x1

.field private static final SUMMARY_CONTACT_ID:I = 0x0

.field private static final SUMMARY_DISPLAY_NAME:I = 0x1

.field private static final SUMMARY_DISPLAY_NAME_ALT:I = 0x3

.field private static final SUMMARY_IN_VISIBLE_GROUP:I = 0x4

.field private static final SUMMARY_PHOTO_ID:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LinkProcessActivity"


# instance fields
.field private mContactUri:Landroid/net/Uri;

.field private mFindTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

.field private mLinkTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 70
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 71
    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 72
    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "in_visible_group"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 68
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;-><init>()V

    return-void
.end method

.method private getContactSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 844
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const-string/jumbo v1, " NOT IN (SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    const-string/jumbo v1, " FROM raw_contacts WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    const-string/jumbo v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    const-string/jumbo v1, "=2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/chameleon/ChameleonUtils;->excludeChameleonContactSelection(Ljava/lang/StringBuilder;)V

    .line 852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private linkMultiContacts(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    .line 141
    const-string/jumbo v9, "suggestions_id_list"

    .line 140
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 143
    .local v7, "suggestionsIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v9, "suggestion_length_list"

    .line 142
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 145
    .local v8, "suggestionsLengthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v9, "linked_suggestions_id_list"

    .line 144
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 146
    .local v4, "linkedSuggestionsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 147
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 148
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 149
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v6, "newLinkedSuggestionsLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v5, "newLinkedSuggestionsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 152
    .local v0, "currentIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_3

    .line 153
    const/4 v3, 0x0

    .line 154
    .local v3, "length":I
    move v2, v0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v0

    if-ge v2, v9, :cond_1

    .line 155
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 156
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v3, v3, 0x1

    .line 154
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_1
    if-lez v3, :cond_2

    .line 162
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v9, v3, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_2
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v0, v9

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "j":I
    .end local v3    # "length":I
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 168
    new-instance v9, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    .line 169
    iget-object v10, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mContactUri:Landroid/net/Uri;

    .line 168
    invoke-direct {v9, p0, v5, v6, v10}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/net/Uri;)V

    iput-object v9, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mLinkTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    .line 170
    iget-object v9, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mLinkTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    new-array v10, v11, [Ljava/lang/Long;

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    .end local v0    # "currentIndex":I
    .end local v1    # "i":I
    .end local v5    # "newLinkedSuggestionsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "newLinkedSuggestionsLength":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    return-void
.end method

.method public static showErrorDialog(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "messageId"    # I

    .prologue
    .line 818
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 819
    return-void

    .line 822
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 823
    const v2, 0x7f0901fa

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 822
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 825
    const v2, 0x104000a

    const/4 v3, 0x0

    .line 822
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 826
    .local v0, "alertDlg":Landroid/app/AlertDialog;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 833
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 817
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    return v0
.end method

.method public getButtonMode()I
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x1

    return v0
.end method

.method public getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeResource()I
    .locals 1

    .prologue
    .line 923
    const/4 v0, -0x1

    return v0
.end method

.method public getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 928
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$2;-><init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)V

    return-object v0
.end method

.method public getPositiveResource()I
    .locals 1

    .prologue
    .line 918
    const v0, 0x104000a

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "aRequestCode"    # I
    .param p2, "aResultCode"    # I
    .param p3, "aData"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 869
    packed-switch p1, :pswitch_data_0

    .line 868
    :cond_0
    :goto_0
    return-void

    .line 871
    :pswitch_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_1

    if-eqz p3, :cond_1

    .line 873
    const-string/jumbo v4, "suggestions_id_list"

    .line 872
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 875
    .local v2, "suggestionsIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "suggestion_length_list"

    .line 874
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 877
    .local v3, "suggestionsLengthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v4, "linked_suggestions_id_list"

    .line 876
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 878
    .local v0, "linkedSuggestionsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 879
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 880
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 881
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->linkMultiContacts(Landroid/content/Intent;)V

    goto :goto_0

    .line 883
    .end local v0    # "linkedSuggestionsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "suggestionsIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "suggestionsLengthList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    if-nez p2, :cond_0

    .line 884
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 885
    .local v1, "resultIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 886
    invoke-virtual {p0, v5, v1}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->setResult(ILandroid/content/Intent;)V

    .line 887
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->finish()V

    goto :goto_0

    .line 869
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 953
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 954
    .local v0, "resultIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 955
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->setResult(ILandroid/content/Intent;)V

    .line 956
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onBackPressed()V

    .line 952
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 908
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 907
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "aSavedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 109
    const-string/jumbo v3, "LinkProcessActivity"

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->begin(Ljava/lang/String;)V

    .line 110
    invoke-super {p0, p1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isAllRequiredPermissionGranted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 116
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 117
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "com.android.contacts.action.FIND_PROCESS_SINGLE_CONTACT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    const-string/jumbo v3, "suggestions_uri"

    .line 120
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "contactUriString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 123
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mContactUri:Landroid/net/Uri;

    .line 130
    .end local v1    # "contactUriString":Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;-><init>(Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;)V

    iput-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mFindTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    .line 131
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mFindTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mFindTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/net/Uri;

    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mContactUri:Landroid/net/Uri;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    .end local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "LinkProcessActivity"

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->end(Ljava/lang/String;)V

    .line 136
    return-void

    .line 125
    .restart local v0    # "action":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "com.android.contacts.action.FIND_PROCESS_ALL_CONTACTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mContactUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 897
    invoke-super {p0}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionActivity;->onDestroy()V

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mFindTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mFindTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$FindLinkCanTask;->cancelFind()V

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mLinkTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity;->mLinkTask:Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/FindAndLinkProcessActivity$LinkPersistTask;->cancelLink()V

    .line 896
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    .line 947
    return-void
.end method
