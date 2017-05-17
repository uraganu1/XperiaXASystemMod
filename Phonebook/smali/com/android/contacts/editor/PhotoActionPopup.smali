.class public Lcom/android/contacts/editor/PhotoActionPopup;
.super Ljava/lang/Object;
.source "PhotoActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/PhotoActionPopup$Flags;,
        Lcom/android/contacts/editor/PhotoActionPopup$Modes;,
        Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;,
        Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;,
        Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    }
.end annotation


# static fields
.field private static synthetic -com_android_contacts_editor_PhotoActionPopup$TypeOfDialogSwitchesValues:[I


# direct methods
.method private static synthetic -getcom_android_contacts_editor_PhotoActionPopup$TypeOfDialogSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->-com_android_contacts_editor_PhotoActionPopup$TypeOfDialogSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->-com_android_contacts_editor_PhotoActionPopup$TypeOfDialogSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->values()[Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->Group:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->LinkedContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->NormalContact:Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;

    invoke-virtual {v1}, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/contacts/editor/PhotoActionPopup;->-com_android_contacts_editor_PhotoActionPopup$TypeOfDialogSwitchesValues:[I

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

.method static synthetic -wrap0(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/contacts/editor/PhotoActionPopup;->buildChoices(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildChoices(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v0, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    and-int/lit8 v6, p1, 0x1

    if-lez v6, :cond_0

    .line 279
    new-instance v6, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    .line 280
    const v7, 0x7f090158

    .line 279
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v8, v7}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    and-int/lit8 v6, p1, 0x2

    if-lez v6, :cond_1

    .line 283
    new-instance v6, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    .line 284
    const v7, 0x7f090156

    .line 283
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v6, v8, v7}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1
    and-int/lit8 v6, p1, 0x8

    if-lez v6, :cond_4

    const/4 v3, 0x1

    .line 289
    .local v3, "replace":Z
    :goto_0
    if-eqz v3, :cond_5

    const v4, 0x7f090157

    .line 290
    .local v4, "takePhotoResId":I
    :goto_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "takePhotoString":Ljava/lang/String;
    const v6, 0x7f090154

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "pickPhotoString":Ljava/lang/String;
    const v6, 0x7f0903bf

    .line 292
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "pickCloudPhoto":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/contacts/editor/PhotoActionPopup;->isCameraAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 296
    new-instance v6, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_2
    new-instance v6, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v2}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-static {p0}, Lcom/android/contacts/editor/PhotoActionPopup;->isCloudAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 301
    new-instance v6, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v1}, Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_3
    return-object v0

    .line 288
    .end local v1    # "pickCloudPhoto":Ljava/lang/String;
    .end local v2    # "pickPhotoString":Ljava/lang/String;
    .end local v3    # "replace":Z
    .end local v4    # "takePhotoResId":I
    .end local v5    # "takePhotoString":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "replace":Z
    goto :goto_0

    .line 289
    :cond_5
    const v4, 0x7f090155

    .restart local v4    # "takePhotoResId":I
    goto :goto_1
.end method

.method public static createPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ILcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;Ljava/util/ArrayList;)Landroid/app/DialogFragment;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p3, "mode"    # I
    .param p4, "typeOfDialog"    # Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/android/contacts/editor/PhotoActionPopup$Listener;",
            "I",
            "Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;)",
            "Landroid/app/DialogFragment;"
        }
    .end annotation

    .prologue
    .line 204
    .local p5, "contactPictureValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-static {}, Lcom/android/contacts/editor/PhotoActionPopup;->-getcom_android_contacts_editor_PhotoActionPopup$TypeOfDialogSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p4}, Lcom/android/contacts/editor/PhotoActionPopup$TypeOfDialog;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 206
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupDialog(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;IZ)Landroid/app/DialogFragment;

    move-result-object v0

    return-object v0

    .line 208
    :pswitch_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupDialog(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;IZ)Landroid/app/DialogFragment;

    move-result-object v0

    return-object v0

    .line 210
    :pswitch_2
    invoke-static {p0, p1, p2, p3, p5}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupDialogForLinkedContact(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ILjava/util/ArrayList;)Landroid/app/DialogFragment;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static createPopupDialog(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;IZ)Landroid/app/DialogFragment;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p3, "mode"    # I
    .param p4, "isGroup"    # Z

    .prologue
    .line 220
    invoke-static {p0, p3}, Lcom/android/contacts/editor/PhotoActionPopup;->buildChoices(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 221
    .local v1, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/editor/PhotoActionPopup$ChoiceListItem;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 222
    const v3, 0x7f0400ce

    .line 221
    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 224
    .local v0, "adapter":Landroid/widget/ListAdapter;
    new-instance v2, Lcom/android/contacts/editor/PhotoActionPopup$2;

    invoke-direct {v2, p4, v0, v1, p2}, Lcom/android/contacts/editor/PhotoActionPopup$2;-><init>(ZLandroid/widget/ListAdapter;Ljava/util/ArrayList;Lcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    .line 273
    .local v2, "popupDialogFragment":Landroid/app/DialogFragment;
    return-object v2
.end method

.method private static createPopupDialogForLinkedContact(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;ILjava/util/ArrayList;)Landroid/app/DialogFragment;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/android/contacts/editor/PhotoActionPopup$Listener;
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/android/contacts/editor/PhotoActionPopup$Listener;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;)",
            "Landroid/app/DialogFragment;"
        }
    .end annotation

    .prologue
    .line 114
    .local p4, "contactPictureValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    new-instance v0, Lcom/android/contacts/editor/PhotoActionPopup$1;

    invoke-direct {v0, p0, p4, p3, p2}, Lcom/android/contacts/editor/PhotoActionPopup$1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ILcom/android/contacts/editor/PhotoActionPopup$Listener;)V

    .line 199
    .local v0, "popupDialogFragment":Landroid/app/DialogFragment;
    return-object v0
.end method

.method private static isCameraAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 321
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method private static isCloudAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->getVerizonCloudPhotoPickIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 308
    invoke-static {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ContactsUtils;->isIntentResolvable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
