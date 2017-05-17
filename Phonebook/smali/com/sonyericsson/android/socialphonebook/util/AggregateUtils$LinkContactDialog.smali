.class public Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;
.super Landroid/app/DialogFragment;
.source "AggregateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkContactDialog"
.end annotation


# static fields
.field private static final KEY_CONTACT_WRAPPER:Ljava/lang/String; = "contactWrapper"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 491
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->TAG:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;)Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;
    .locals 3
    .param p0, "wrapper"    # Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .prologue
    .line 496
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;-><init>()V

    .line 497
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 498
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "contactWrapper"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 499
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->setArguments(Landroid/os/Bundle;)V

    .line 500
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 506
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 507
    .local v1, "arguments":Landroid/os/Bundle;
    const-string/jumbo v7, "contactWrapper"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;

    .line 509
    .local v6, "wrapper":Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;
    const/4 v4, 0x0

    .line 510
    .local v4, "photoBitmap":Landroid/graphics/Bitmap;
    iget-object v7, v6, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    if-eqz v7, :cond_0

    .line 511
    iget-object v7, v6, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    iget-object v8, v6, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->photo:[B

    array-length v8, v8

    const/4 v9, 0x0

    invoke-static {v7, v9, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 513
    .end local v4    # "photoBitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 515
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v7, v6, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->name:Ljava/lang/String;

    .line 514
    invoke-static {v0, v7}, Lcom/android/contacts/detail/ContactDisplayUtils;->getProperlyFormatedNameText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, "properlyFormatedName":Ljava/lang/String;
    const v7, 0x7f0901fd

    invoke-virtual {v0, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 518
    iget-wide v8, v6, Lcom/sonyericsson/android/socialphonebook/ContactsUtils$ContactInfoWrapper;->contactId:J

    .line 517
    invoke-static {v0, v5, v4, v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils;->-wrap0(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;J)Landroid/view/View;

    move-result-object v8

    .line 516
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 519
    new-instance v7, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog$1;

    invoke-direct {v7, p0, v0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;Landroid/app/Activity;)V

    const v8, 0x104000a

    invoke-virtual {v2, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 527
    .local v3, "dialog":Landroid/app/AlertDialog;
    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 532
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 533
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/util/AggregateUtils$LinkContactDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 534
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 535
    const v1, 0x7f090243

    .line 536
    const/4 v2, 0x0

    .line 535
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 537
    instance-of v1, v0, Lcom/sonyericsson/android/socialphonebook/JoinContactActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
