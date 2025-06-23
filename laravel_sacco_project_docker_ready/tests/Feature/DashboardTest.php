<?php
it('shows dashboard', function () {
 $response = $this->get('/dashboard');
 $response->assertStatus(200);
});