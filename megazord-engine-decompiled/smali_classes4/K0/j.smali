.class public final LK0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX0/z$a;


# direct methods
.method public constructor <init>(LK0/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/u;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LK0/b$a;

    invoke-interface {p1}, LK0/b$a;->h()Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method
