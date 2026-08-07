.class public final synthetic Lv1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU0/n;


# instance fields
.field public final synthetic a:Lv1/u;

.field public final synthetic b:Lcom/google/android/gms/auth/api/identity/g;


# direct methods
.method public synthetic constructor <init>(Lv1/u;Lcom/google/android/gms/auth/api/identity/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv1/s;->a:Lv1/u;

    iput-object p2, p0, Lv1/s;->b:Lcom/google/android/gms/auth/api/identity/g;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, LQ1/l;

    iget-object v0, p0, Lv1/s;->a:Lv1/u;

    iget-object v1, p0, Lv1/s;->b:Lcom/google/android/gms/auth/api/identity/g;

    check-cast p1, Lv1/v;

    invoke-virtual {v0, v1, p1, p2}, Lv1/u;->h0(Lcom/google/android/gms/auth/api/identity/g;Lv1/v;LQ1/l;)V

    return-void
.end method
