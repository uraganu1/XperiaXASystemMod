.class Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;
.implements Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneNumberServiceListener"
.end annotation


# instance fields
.field private final mCallId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ContactInfoCache;
    .param p2, "callId"    # Ljava/lang/String;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    .line 332
    return-void
.end method
