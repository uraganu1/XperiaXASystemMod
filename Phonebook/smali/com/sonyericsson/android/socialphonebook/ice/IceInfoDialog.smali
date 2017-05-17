.class public Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
.super Landroid/app/DialogFragment;
.source "IceInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_ice_IceInfoDialog$InfoTypeSwitchesValues:[I = null

.field private static final INFO_TYPE_KEY:Ljava/lang/String; = "info_type_key"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_ice_IceInfoDialog$InfoTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->-com_sonyericsson_android_socialphonebook_ice_IceInfoDialog$InfoTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->-com_sonyericsson_android_socialphonebook_ice_IceInfoDialog$InfoTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->values()[Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ABOUT_ICE:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->DISABLED_CALL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->MEDICAL_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->MYSELF_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->NOT_VOICE_CAPABLE_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->NO_NUMBER_INFO:Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->-com_sonyericsson_android_socialphonebook_ice_IceInfoDialog$InfoTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getDialogMessage(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    .prologue
    .line 66
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->-getcom_sonyericsson_android_socialphonebook_ice_IceInfoDialog$InfoTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 84
    const-string/jumbo v0, ""

    return-object v0

    .line 68
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090327

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    const v1, 0x7f090328

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "\n\n"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const v1, 0x7f090329

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090340

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const v1, 0x7f090341

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09032a

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const v1, 0x7f09032b

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :pswitch_3
    const v0, 0x7f09034a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :pswitch_4
    const v0, 0x7f090384

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 82
    :pswitch_5
    const v0, 0x7f090385

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private getDialogTitle(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)I
    .locals 2
    .param p1, "type"    # Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    .prologue
    .line 89
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->-getcom_sonyericsson_android_socialphonebook_ice_IceInfoDialog$InfoTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    return v0

    .line 91
    :pswitch_0
    const v0, 0x7f090347

    return v0

    .line 93
    :pswitch_1
    const v0, 0x7f09033f

    return v0

    .line 95
    :pswitch_2
    const v0, 0x7f09033e

    return v0

    .line 97
    :pswitch_3
    const v0, 0x7f090349

    return v0

    .line 100
    :pswitch_4
    const v0, 0x7f09028c

    return v0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static newInstance(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    .locals 3
    .param p0, "type"    # Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    .prologue
    .line 40
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;-><init>()V

    .line 43
    .local v1, "dialog":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "info_type_key"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "info_type_key"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;

    .line 56
    .local v2, "infoType":Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getDialogTitle(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog;->getDialogMessage(Lcom/sonyericsson/android/socialphonebook/ice/IceInfoDialog$InfoType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 60
    const v3, 0x7f090200

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
