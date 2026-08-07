.class public final Lcom/google/android/gms/internal/play_billing/i;
.super Lcom/google/android/gms/internal/play_billing/j;
.source "SourceFile"


# instance fields
.field public final transient e:I

.field public final transient f:I

.field public final synthetic g:Lcom/google/android/gms/internal/play_billing/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/play_billing/j;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/i;->g:Lcom/google/android/gms/internal/play_billing/j;

    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/j;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/play_billing/i;->e:I

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/i;->f:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i;->g:Lcom/google/android/gms/internal/play_billing/j;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/i;->e:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/i;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i;->g:Lcom/google/android/gms/internal/play_billing/j;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g;->c()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/i;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/i;->f:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/b;->a(IILjava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i;->g:Lcom/google/android/gms/internal/play_billing/j;

    iget v1, p0, Lcom/google/android/gms/internal/play_billing/i;->e:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final i()[Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/i;->g:Lcom/google/android/gms/internal/play_billing/j;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g;->i()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final j(II)Lcom/google/android/gms/internal/play_billing/j;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/i;->f:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/b;->d(III)V

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/i;->e:I

    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/i;->g:Lcom/google/android/gms/internal/play_billing/j;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/j;->j(II)Lcom/google/android/gms/internal/play_billing/j;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/play_billing/i;->f:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/j;->j(II)Lcom/google/android/gms/internal/play_billing/j;

    move-result-object p1

    return-object p1
.end method
