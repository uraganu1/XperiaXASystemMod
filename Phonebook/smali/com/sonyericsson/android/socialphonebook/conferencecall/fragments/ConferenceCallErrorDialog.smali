.class public Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;
.super Landroid/app/DialogFragment;
.source "ConferenceCallErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_conferencecall_ConferenceCallHelper$ConferenceConstraintSwitchesValues:[I = null

.field private static final KEY_ERROR_TYPE:Ljava/lang/String; = "errorType"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method private static synthetic -getcom_sonyericsson_android_socialphonebook_conferencecall_ConferenceCallHelper$ConferenceConstraintSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->-com_sonyericsson_android_socialphonebook_conferencecall_ConferenceCallHelper$ConferenceConstraintSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->-com_sonyericsson_android_socialphonebook_conferencecall_ConferenceCallHelper$ConferenceConstraintSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->values()[Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->CALLER_ID_DEACTIVATED:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->CALLER_IN_ROAMING:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->NO_CONSTRAINT:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ONGOING_CALL_IN_PROGRESS:Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->-com_sonyericsson_android_socialphonebook_conferencecall_ConferenceCallHelper$ConferenceConstraintSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 73
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog$1;-><init>(Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 23
    return-void
.end method

.method public static newInstance(Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;)Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;
    .locals 4
    .param p0, "type"    # Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    .prologue
    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "errorType"

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;

    invoke-direct {v1}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;-><init>()V

    .line 34
    .local v1, "instance":Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 35
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x104000a

    const/4 v5, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "errorType"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, "ordinal":I
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->values()[Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;

    move-result-object v3

    aget-object v2, v3, v1

    .line 42
    .local v2, "type":Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->-getcom_sonyericsson_android_socialphonebook_conferencecall_ConferenceCallHelper$ConferenceConstraintSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/conferencecall/ConferenceCallHelper$ConferenceConstraint;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 67
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown error type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :pswitch_0
    const v3, 0x7f0903b2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 47
    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 51
    :pswitch_1
    const v3, 0x7f0903b3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 56
    :pswitch_2
    const v3, 0x7f0903b0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 57
    const v3, 0x7f0903b4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 58
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    const v4, 0x7f0903b7

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 63
    :pswitch_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/conferencecall/fragments/ConferenceCallErrorDialog;->dismiss()V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
