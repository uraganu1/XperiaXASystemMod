.class final Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;
.super Ljava/lang/Object;
.source "DefaultVoicemailNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NewCall"
.end annotation


# instance fields
.field public final mCallsUri:Landroid/net/Uri;

.field public final mNumber:Ljava/lang/String;

.field public mNumberPresentation:I

.field public final mVoicemailUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callsUri"    # Landroid/net/Uri;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "numberPresentation"    # I

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mCallsUri:Landroid/net/Uri;

    .line 258
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mVoicemailUri:Landroid/net/Uri;

    .line 259
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumber:Ljava/lang/String;

    .line 260
    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/DefaultVoicemailNotifier$NewCall;->mNumberPresentation:I

    .line 256
    return-void
.end method
