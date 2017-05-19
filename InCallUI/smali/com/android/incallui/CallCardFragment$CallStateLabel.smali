.class Lcom/android/incallui/CallCardFragment$CallStateLabel;
.super Ljava/lang/Object;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateLabel"
.end annotation


# instance fields
.field private mCallStateLabel:Ljava/lang/CharSequence;

.field private mIsAutoDismissing:Z

.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/CallCardFragment;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardFragment;
    .param p2, "callStateLabel"    # Ljava/lang/CharSequence;
    .param p3, "isAutoDismissing"    # Z

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$CallStateLabel;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$CallStateLabel;->mCallStateLabel:Ljava/lang/CharSequence;

    .line 87
    iput-boolean p3, p0, Lcom/android/incallui/CallCardFragment$CallStateLabel;->mIsAutoDismissing:Z

    .line 85
    return-void
.end method


# virtual methods
.method public getCallStateLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$CallStateLabel;->mCallStateLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAutoDismissing()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment$CallStateLabel;->mIsAutoDismissing:Z

    return v0
.end method
