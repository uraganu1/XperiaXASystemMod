.class public Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "UnlinkContactConfirmationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT_WRAPPER:Ljava/lang/String; = "contactWrapper"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;)Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createContent(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "wrapper"    # Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .prologue
    const/4 v5, 0x0

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04000a

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 116
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v3, 0x7f0e0043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v3, 0x7f0e0042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 119
    .local v0, "image":Landroid/widget/ImageView;
    iget-object v3, p3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    if-nez v3, :cond_0

    .line 120
    invoke-static {p1}, Lcom/android/contacts/photomanager/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/photomanager/ContactPhotoManager;

    move-result-object v3

    .line 122
    sget-object v4, Lcom/android/contacts/photomanager/ContactPhotoManager;->PERSON_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/photomanager/DefaultImageRequest;

    .line 123
    iget-object v5, p3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->name:Ljava/lang/String;

    iget-object v6, p3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->phoneNumber:Ljava/lang/String;

    iget-object v7, p3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->email:Ljava/lang/String;

    .line 120
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/contacts/photomanager/ContactPhotoManager;->generateContactThumbnail(Lcom/android/contacts/photomanager/DefaultImageRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    :goto_0
    return-object v2

    .line 125
    :cond_0
    iget-object v3, p3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    .line 126
    iget-object v4, p3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    array-length v4, v4

    .line 125
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    .local v1, "photoBitmap":Landroid/graphics/Bitmap;
    iget-wide v4, p3, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->rawContactId:J

    .line 127
    invoke-static {p1, v1, v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/ImageUtil;->createRoundedAvatarFromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static newInstance(Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;
    .locals 3
    .param p0, "wrapper"    # Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .prologue
    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "contactWrapper"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;-><init>()V

    .line 52
    .local v1, "unlinkDialog":Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 61
    .local v1, "targetFragment":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 62
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Target fragment must be set."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    :try_start_0
    check-cast v1, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;

    .end local v1    # "targetFragment":Landroid/app/Fragment;
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->mListener:Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$Listener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    const-string/jumbo v3, "Calling fragment must implement UnlinkContactConfirmationDialog.Listener interface."

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 76
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "contactWrapper"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .line 78
    .local v2, "wrapper":Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09023e

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 81
    const v3, 0x7f09023f

    invoke-virtual {p0, v3}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-direct {p0, v1, v3, v2}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;->createContent(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 84
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;)V

    .line 83
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    new-instance v3, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$2;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog$2;-><init>(Lcom/sonyericsson/android/socialphonebook/ui/UnlinkContactConfirmationDialog;Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)V

    .line 91
    const v4, 0x7f090240

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
