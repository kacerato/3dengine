.class public final synthetic Lf7/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW5/n;


# instance fields
.field public final synthetic a:Lf7/p;


# direct methods
.method public synthetic constructor <init>(Lf7/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/n;->a:Lf7/p;

    return-void
.end method


# virtual methods
.method public final refresh(I)V
    .locals 1

    iget-object v0, p0, Lf7/n;->a:Lf7/p;

    invoke-static {v0, p1}, Lf7/p;->g(Lf7/p;I)V

    return-void
.end method
