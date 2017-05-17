.class public Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
.super Landroid/widget/LinearLayout;
.source "ConversationContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;
    }
.end annotation


# static fields
.field private static mSaveContactDialog:Landroid/app/AlertDialog;


# instance fields
.field private mContactBadgeClickListener:Landroid/view/View$OnClickListener;

.field private mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

.field private mParticipant:Lcom/sonyericsson/conversations/model/Participant;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/view/RoundedImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)Lcom/sonyericsson/conversations/model/Participant;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->launchProfileViewer()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->sendAddressToContact()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showSaveToContactDialog()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$1;-><init>(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactBadgeClickListener:Landroid/view/View$OnClickListener;

    .line 63
    new-instance v0, Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-direct {v0, p1}, Lcom/sonyericsson/conversations/view/RoundedImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method

.method public static dismissSaveToContactDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-object v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    sput-object v3, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    .line 153
    :cond_0
    return-void

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 158
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception occurred when dismissing the contact dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v1

    .line 161
    sput-object v3, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    .line 160
    throw v1
.end method

.method private launchProfileViewer()V
    .locals 4

    .prologue
    .line 129
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendAddressToContact()V
    .locals 5

    .prologue
    .line 170
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    if-nez v2, :cond_0

    .line 171
    const-string/jumbo v2, "mParticipant is null!"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 172
    return-void

    .line 175
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 177
    const-string/jumbo v2, "phone"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    :cond_1
    :goto_0
    const-string/jumbo v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    return-void

    .line 179
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 180
    const-string/jumbo v2, "email"

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error occurred when looking for application that can store a contact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 188
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 192
    const/4 v4, 0x0

    .line 190
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method

.method private showSaveToContactDialog()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    const v1, 0x7f0b0093

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge$2;-><init>(Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V

    .line 144
    const v2, 0x7f0b00a0

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 149
    const v1, 0x7f0b015a

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    .line 150
    sget-object v0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mSaveContactDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    return-void
.end method


# virtual methods
.method public showContact(Lcom/sonyericsson/conversations/model/Participant;)V
    .locals 6
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;

    .prologue
    const/4 v1, 0x0

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 80
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    .line 81
    const/4 v3, 0x1

    .line 80
    if-ne v2, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 84
    .local v0, "isContactBadgeEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setEnabled(Z)V

    .line 85
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setClickable(Z)V

    .line 86
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactBadgeClickListener:Landroid/view/View$OnClickListener;

    :cond_1
    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    if-nez p1, :cond_5

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    const v2, 0x7f0200ba

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setImageResource(I)V

    .line 95
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setVisibility(I)V

    .line 74
    return-void

    .line 81
    .end local v0    # "isContactBadgeEnabled":Z
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    .restart local v0    # "isContactBadgeEnabled":Z
    goto :goto_0

    .end local v0    # "isContactBadgeEnabled":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isContactBadgeEnabled":Z
    goto :goto_0

    .line 80
    .end local v0    # "isContactBadgeEnabled":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isContactBadgeEnabled":Z
    goto :goto_0

    .line 92
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-static {p1, v1}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadBadgeContactImage(Lcom/sonyericsson/conversations/model/Participant;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method public showDraftImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setClickable(Z)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setImageResource(I)V

    .line 110
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public showGroupContact(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setClickable(Z)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/view/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->mContactImage:Lcom/sonyericsson/conversations/view/RoundedImageView;

    invoke-static {p1, v0}, Lcom/sonyericsson/conversations/util/ImageHandler;->loadGroupConversationBadgeImage(Ljava/util/List;Landroid/widget/ImageView;)V

    .line 125
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setVisibility(I)V

    .line 118
    return-void
.end method
