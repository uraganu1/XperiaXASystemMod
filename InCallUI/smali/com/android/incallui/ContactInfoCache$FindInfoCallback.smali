.class Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInfoCallback"
.end annotation


# instance fields
.field private final mIsIncoming:Z

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactInfoCache;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactInfoCache;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    .line 181
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/incallui/CallerInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "callerInfo"    # Lcom/android/incallui/CallerInfo;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    check-cast p2, Lcom/android/incallui/Call;

    .end local p2    # "cookie":Ljava/lang/Object;
    iget-boolean v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    const/4 v2, 0x1

    invoke-static {v0, p2, p3, v1, v2}, Lcom/android/incallui/ContactInfoCache;->-wrap0(Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/Call;Lcom/android/incallui/CallerInfo;ZZ)V

    .line 186
    return-void
.end method
